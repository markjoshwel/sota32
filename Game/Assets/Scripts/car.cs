using System;
using UnityEngine;
using UnityEngine.Splines;

[RequireComponent(typeof(SplineAnimate))]
[RequireComponent(typeof(Rigidbody))]
public class Car : MonoBehaviour
{
    [SerializeField] private SplineAnimate splineAnimator;
    [SerializeField] private float topSpeed = 8f;
    [SerializeField] private float accelerationTime = 1.4f;
    [SerializeField] private float decelerationTime = 0.8f;
    [SerializeField] private float startDelay = 0.5f;
    [SerializeField] private float detectionDistance = 4f;

    // SplineAnimate Forward Axis is "Object X-"
    private Vector3 MoveDirection => -transform.right;

    private Rigidbody _rb;
    private Collider _myCollider;
    private TrafficLight _currentTrafficLight;

    private bool _started;
    private bool _blockedByCar;
    private bool _blockedByLight;

    private int _carAheadFrames;
    private int _carClearFrames;
    private const int HysteresisFrames = 3;

    private float _currentSpeed;
    private float _splineDuration; // cached; never changes at runtime

    private void Start()
    {
        if (splineAnimator == null)
            splineAnimator = GetComponent<SplineAnimate>();

        _myCollider = GetComponentInChildren<MeshCollider>();
        if (_myCollider == null)
            _myCollider = GetComponent<Collider>(); // fallback
        _rb = GetComponent<Rigidbody>();
        if (_rb != null)
        {
            _rb.isKinematic = true;
            _rb.useGravity = false;
        }

        splineAnimator.Container = CarManger.INSTANCE.roadSplineContainer;

        // Set a fixed MaxSpeed so Duration is calculated once and never NaN/Infinity.
        // We will NEVER change MaxSpeed again — we drive ElapsedTime manually instead.
        splineAnimator.MaxSpeed = topSpeed;
        splineAnimator.Completed += OnSplineCompleted;

        // Pause immediately — we control all movement via ElapsedTime in Update
        splineAnimator.Pause();
        splineAnimator.ElapsedTime = 0f;

        // Cache the duration SplineAnimate calculated for topSpeed
        _splineDuration = splineAnimator.Duration;
        _currentSpeed = 0f;

        Invoke(nameof(BeginDriving), startDelay + UnityEngine.Random.Range(0f, 1f));
    }

    private void BeginDriving()
    {
        _started = true;
    }

    private void OnSplineCompleted()
    {
        CarManger.INSTANCE.DecrementCarCount();
        Destroy(gameObject);
    }

    private void Update()
    {
        if (!_started) return;

        float targetSpeed = ResolveTargetSpeed();

        // Always ease toward target — unconditionally every frame
        float rate = (targetSpeed >= _currentSpeed)
            ? topSpeed / accelerationTime
            : topSpeed / decelerationTime;

        _currentSpeed = Mathf.MoveTowards(_currentSpeed, targetSpeed, rate * Time.deltaTime);

        if (_currentSpeed <= 0f)
            return; // fully stopped, don't advance ElapsedTime

        // Advance the spline's elapsed time proportional to our current speed.
        // topSpeed maps to full Duration advancement, so scale accordingly.
        float timeStep = (_currentSpeed / topSpeed) * Time.deltaTime;
        float newElapsed = splineAnimator.ElapsedTime + timeStep;

        // Handle loop wrap-around for Loop Continuous mode
        if (_splineDuration > 0f)
            newElapsed %= _splineDuration;

        splineAnimator.ElapsedTime = newElapsed;
    }

    private float ResolveTargetSpeed()
    {
        if (_blockedByLight) return 0f;

        bool rawCarAhead = IsCarAhead();

        if (rawCarAhead)
        {
            _carAheadFrames++;
            _carClearFrames = 0;
        }
        else
        {
            _carClearFrames++;
            _carAheadFrames = 0;
        }

        if (!_blockedByCar && _carAheadFrames >= HysteresisFrames)
            _blockedByCar = true;
        else if (_blockedByCar && _carClearFrames >= HysteresisFrames)
            _blockedByCar = false;

        return _blockedByCar ? 0f : topSpeed;
    }

    private bool IsCarAhead()
    {
        if (_myCollider == null) return false;

        // Use local axes — correct on corners/curves regardless of rotation
        Vector3 forward = MoveDirection;                  // travel direction (-transform.right)
        Vector3 up      = transform.up;
        Vector3 side    = Vector3.Cross(up, forward).normalized;

        // Project mesh bounds extents onto each local axis to get true half-sizes
        Bounds b = _myCollider.bounds;
        float halfLen  = Mathf.Abs(Vector3.Dot(b.extents, forward));
        float halfSide = Mathf.Abs(Vector3.Dot(b.extents, side));
        float halfUp   = Mathf.Abs(Vector3.Dot(b.extents, up));

        float decelRate     = topSpeed / decelerationTime;
        float brakingDist   = (_currentSpeed * _currentSpeed) / (2f * decelRate);
        float lookAhead     = detectionDistance + brakingDist;

        // Probe center: start just past the front face, extend lookAhead forward
        Vector3 probeCenter = b.center + forward * (halfLen + lookAhead * 0.5f);

        // Build rotation from local axes so the box aligns with the car on any curve
        Quaternion probeRot = Quaternion.LookRotation(forward, up);

        // Half-extents in probe-local space: Z = half depth of probe, X/Y = car width/height
        Vector3 probeHalfExtents = new Vector3(halfSide * 0.8f, halfUp * 0.8f, lookAhead * 0.5f);

        Collider[] hits = Physics.OverlapBox(probeCenter, probeHalfExtents, probeRot);
        foreach (var hit in hits)
        {
            if (hit.gameObject != gameObject && !hit.isTrigger && hit.CompareTag("Car"))
                return true;
        }
        return false;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("TrafficLight"))
        {
            _currentTrafficLight = other.transform.parent.GetComponent<TrafficLight>();
            if (_currentTrafficLight != null && _currentTrafficLight.currentState == TrafficLight.State.Red)
                _blockedByLight = true;
        }
    }

    private void OnTriggerStay(Collider other)
    {
        if (other.CompareTag("TrafficLight") && _blockedByLight
            && _currentTrafficLight != null
            && _currentTrafficLight.currentState == TrafficLight.State.Green)
        {
            _blockedByLight = false;
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("TrafficLight"))
            _blockedByLight = false;
    }

    private void OnCollisionEnter(Collision other)
    {
        // TODO: kill player
    }

    private void OnDrawGizmosSelected()
    {
        Collider col = GetComponentInChildren<MeshCollider>();
        if (col == null) col = GetComponent<Collider>();
        if (col == null) return;

        Vector3 forward = -transform.right;
        Vector3 up      = transform.up;
        Vector3 side    = Vector3.Cross(up, forward).normalized;

        Bounds b = col.bounds;
        float halfLen  = Mathf.Abs(Vector3.Dot(b.extents, forward));
        float halfSide = Mathf.Abs(Vector3.Dot(b.extents, side));
        float halfUp   = Mathf.Abs(Vector3.Dot(b.extents, up));

        float decelRate   = topSpeed / decelerationTime;
        float brakingDist = (_currentSpeed * _currentSpeed) / (2f * decelRate);
        float lookAhead   = detectionDistance + brakingDist;

        Vector3 probeCenter      = b.center + forward * (halfLen + lookAhead * 0.5f);
        Quaternion probeRot      = Quaternion.LookRotation(forward, up);
        Vector3 probeHalfExtents = new Vector3(halfSide * 0.8f, halfUp * 0.8f, lookAhead * 0.5f);

        // Draw probe box aligned to car's travel direction
        Gizmos.matrix = Matrix4x4.TRS(probeCenter, probeRot, Vector3.one);
        Gizmos.color  = Color.red;
        Gizmos.DrawWireCube(Vector3.zero, probeHalfExtents * 2f);

        // Draw mesh bounds (world-aligned for reference)
        Gizmos.matrix = Matrix4x4.identity;
        Gizmos.color  = Color.yellow;
        Gizmos.DrawWireCube(b.center, b.extents * 2f);
    }
}