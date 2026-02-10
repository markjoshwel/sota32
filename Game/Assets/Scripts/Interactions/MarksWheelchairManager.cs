using PokkatCore;
using UnityEngine;

namespace Interactions
{
    [DisallowMultipleComponent]
    public class MarksWheelchairManager : MonoBehaviour
    {
        [Header("Chair Body")]
        [SerializeField] private Rigidbody chairRigidbody;
        [SerializeField] private BoxCollider chairCollider;

        [Tooltip("Optional COM override (local space).")]
        [SerializeField] private bool overrideCenterOfMass = true;

        [SerializeField] private Vector3 centerOfMassLocal = new Vector3(0f, -0.25f, 0f);

        [Header("Wheels (required)")]
        [SerializeField] private WheelCollider leftWheel;
        [SerializeField] private WheelCollider rightWheel;

        [Header("Wheel input sources (required)")]
        [SerializeField] private MarksWheelchairWheelInteractable leftWheelInput;
        [SerializeField] private MarksWheelchairWheelInteractable rightWheelInput;

        [Header("Drive")]
        [SerializeField] private float maxBrakeTorqueWhenIdle = 50f;

        [Tooltip("If true, manager forces wheel.motorTorque each FixedUpdate.")]
        [SerializeField] private bool driveFromManager = true;

        [Header("Wheel visuals (optional)")]
        [SerializeField] private Transform leftWheelVisual;
        [SerializeField] private Transform rightWheelVisual;

        private void Awake()
        {
            if (!chairRigidbody) chairRigidbody = GetComponentInChildren<Rigidbody>();
            if (!chairCollider) chairCollider = GetComponentInChildren<BoxCollider>();

            if (!chairRigidbody) Logkat.Panic("MarksWheelchairManager: Missing chair Rigidbody.");
            if (!chairCollider) Logkat.Warn("MarksWheelchairManager: Missing chair BoxCollider (not fatal).");

            if (!leftWheel || !rightWheel)
                AutoResolveWheelCollidersByName();

            if (!leftWheel || !rightWheel)
                Logkat.Panic("MarksWheelchairManager: Missing left/right WheelCollider.");

            if (!leftWheelInput || !rightWheelInput)
                AutoResolveWheelInputsByName();

            if (!leftWheelInput || !rightWheelInput)
                Logkat.Panic("MarksWheelchairManager: Missing left/right wheel input interactables.");

            // Stability: freeze roll/pitch.
            // ReSharper disable once BitwiseOperatorOnEnumWithoutFlags
            chairRigidbody.constraints |= RigidbodyConstraints.FreezeRotationX;
            // ReSharper disable once BitwiseOperatorOnEnumWithoutFlags
            chairRigidbody.constraints |= RigidbodyConstraints.FreezeRotationZ;

            if (overrideCenterOfMass)
                chairRigidbody.centerOfMass = centerOfMassLocal;

            Logkat.Dev($"MarksWheelchairManager: Awake OK. RB={chairRigidbody.name}, LWheel={leftWheel.name}, RWheel={rightWheel.name}");
        }

        private void FixedUpdate()
        {
            if (!driveFromManager) return;

            var leftTorque = leftWheelInput.desiredMotorTorque;
            var rightTorque = rightWheelInput.desiredMotorTorque;

            leftWheel.motorTorque = leftTorque;
            rightWheel.motorTorque = rightTorque;

            // Optional “idle brake” to prevent slow sliding when nobody is pushing.
            var anyPushing = Mathf.Abs(leftTorque) > 0.01f || Mathf.Abs(rightTorque) > 0.01f;
            var brake = anyPushing ? 0f : maxBrakeTorqueWhenIdle;

            leftWheel.brakeTorque = brake;
            rightWheel.brakeTorque = brake;
        }

        private void LateUpdate()
        {
            // Keep visuals aligned to WheelCollider simulation.
            if (leftWheelVisual && leftWheel) SyncWheelVisual(leftWheel, leftWheelVisual);
            if (rightWheelVisual && rightWheel) SyncWheelVisual(rightWheel, rightWheelVisual);
        }

        private static void SyncWheelVisual(WheelCollider wc, Transform visual)
        {
            wc.GetWorldPose(out var pos, out var rot);
            visual.position = pos;
            visual.rotation = rot;
        }

        private void AutoResolveWheelCollidersByName()
        {
            var wheels = GetComponentsInChildren<WheelCollider>(true);
            foreach (var wc in wheels)
            {
                var n = wc.name.ToLowerInvariant();
                if (!leftWheel && n.Contains("left")) leftWheel = wc;
                if (!rightWheel && n.Contains("right")) rightWheel = wc;
            }

            Logkat.Dev($"MarksWheelchairManager: AutoResolveWheelCollidersByName => left={(leftWheel ? leftWheel.name : "null")}, right={(rightWheel ? rightWheel.name : "null")}");
        }

        private void AutoResolveWheelInputsByName()
        {
            var inputs = GetComponentsInChildren<MarksWheelchairWheelInteractable>(true);
            foreach (var wi in inputs)
            {
                var n = wi.name.ToLowerInvariant();
                if (!leftWheelInput && n.Contains("left")) leftWheelInput = wi;
                if (!rightWheelInput && n.Contains("right")) rightWheelInput = wi;
            }

            Logkat.Dev($"MarksWheelchairManager: AutoResolveWheelInputsByName => left={(leftWheelInput ? leftWheelInput.name : "null")}, right={(rightWheelInput ? rightWheelInput.name : "null")}");
        }
    }
}
