using UnityEngine;

/// <summary>
/// Place this script on the XR Origin (VR Rig) to keep a wheelchair model positioned under the player,
/// adjusting to terrain height at all times.
/// </summary>
public class WheelchairBounding : MonoBehaviour
{
    [Header("Wheelchair Settings")]
    [Tooltip("The wheelchair model GameObject to position under the player.")]
    [SerializeField] private GameObject wheelchairModel;

    [Tooltip("Vertical offset from the ground to position the wheelchair.")]
    [SerializeField] private float heightOffset = 0.0f;

    [Tooltip("How quickly the wheelchair adjusts to terrain height changes.")]
    [SerializeField] private float terrainAdjustSpeed = 10f;

    [Header("Terrain Detection")]
    [Tooltip("Layer mask for terrain/ground detection.")]
    [SerializeField] private LayerMask groundLayerMask = ~0;

    [Tooltip("Maximum distance to raycast downward for terrain detection.")]
    [SerializeField] private float maxRaycastDistance = 100f;

    [Tooltip("Offset from the XR Origin position to start the raycast (should be above the ground).")]
    [SerializeField] private float raycastOriginOffset = 2f;

    [Header("Rotation Settings")]
    [Tooltip("Should the wheelchair rotate to match the player's Y rotation?")]
    [SerializeField] private bool followPlayerRotation = true;

    [Tooltip("Should the wheelchair tilt to match terrain normals?")]
    [SerializeField] private bool alignToTerrainNormal = false;

    [Tooltip("How quickly the wheelchair rotation adjusts.")]
    [SerializeField] private float rotationSmoothSpeed = 10f;

    private float currentGroundHeight;
    private Vector3 currentTerrainNormal = Vector3.up;

    void Start()
    {
        if (wheelchairModel == null)
        {
            Debug.LogWarning("WheelchairBounding: No wheelchair model assigned!");
            return;
        }

        // Initialize ground height to current position
        currentGroundHeight = transform.position.y;
        UpdateGroundHeight();
    }

    void LateUpdate()
    {
        if (wheelchairModel == null)
            return;

        UpdateGroundHeight();
        UpdateWheelchairPosition();
        UpdateWheelchairRotation();
    }

    /// <summary>
    /// Casts a ray downward to find the terrain height at the player's position.
    /// </summary>
    private void UpdateGroundHeight()
    {
        Vector3 rayOrigin = transform.position + Vector3.up * raycastOriginOffset;

        if (Physics.Raycast(rayOrigin, Vector3.down, out RaycastHit hit, maxRaycastDistance, groundLayerMask))
        {
            // Smoothly interpolate to the new ground height
            currentGroundHeight = Mathf.Lerp(currentGroundHeight, hit.point.y, Time.deltaTime * terrainAdjustSpeed);
            currentTerrainNormal = hit.normal;
        }
    }

    /// <summary>
    /// Updates the wheelchair position to stay under the player at terrain height.
    /// </summary>
    private void UpdateWheelchairPosition()
    {
        Vector3 targetPosition = new Vector3(
            transform.position.x,
            currentGroundHeight + heightOffset,
            transform.position.z
        );

        wheelchairModel.transform.position = targetPosition;
    }

    /// <summary>
    /// Updates the wheelchair rotation based on player rotation and/or terrain normals.
    /// </summary>
    private void UpdateWheelchairRotation()
    {
        Quaternion targetRotation;

        if (alignToTerrainNormal)
        {
            // Calculate rotation that aligns up direction with terrain normal
            Vector3 forward = followPlayerRotation ? transform.forward : wheelchairModel.transform.forward;
            // Project forward onto the plane defined by terrain normal
            forward = Vector3.ProjectOnPlane(forward, currentTerrainNormal).normalized;
            
            if (forward.sqrMagnitude > 0.001f)
            {
                targetRotation = Quaternion.LookRotation(forward, currentTerrainNormal);
            }
            else
            {
                targetRotation = Quaternion.LookRotation(transform.forward, currentTerrainNormal);
            }
        }
        else if (followPlayerRotation)
        {
            // Only follow Y rotation (yaw) of the player
            targetRotation = Quaternion.Euler(0f, transform.eulerAngles.y, 0f);
        }
        else
        {
            return; // No rotation update needed
        }

        wheelchairModel.transform.rotation = Quaternion.Slerp(
            wheelchairModel.transform.rotation,
            targetRotation,
            Time.deltaTime * rotationSmoothSpeed
        );
    }

    /// <summary>
    /// Draws debug visualization in the editor.
    /// </summary>
    private void OnDrawGizmosSelected()
    {
        if (wheelchairModel == null)
            return;

        // Draw raycast line
        Vector3 rayOrigin = transform.position + Vector3.up * raycastOriginOffset;
        Gizmos.color = Color.yellow;
        Gizmos.DrawLine(rayOrigin, rayOrigin + Vector3.down * maxRaycastDistance);

        // Draw wheelchair target position
        Gizmos.color = Color.green;
        Gizmos.DrawWireSphere(wheelchairModel.transform.position, 0.2f);

        // Draw terrain normal
        if (alignToTerrainNormal)
        {
            Gizmos.color = Color.blue;
            Gizmos.DrawRay(wheelchairModel.transform.position, currentTerrainNormal);
        }
    }
}
