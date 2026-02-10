using PokkatCore;
using UnityEngine;
using UnityEngine.XR.Interaction.Toolkit;
using UnityEngine.XR.Interaction.Toolkit.Interactables;

namespace Interactions
{
    [DisallowMultipleComponent]
    [RequireComponent(typeof(XRSimpleInteractable))]
    public class MarksWheelchairWheelInteractable : MonoBehaviour
    {
        [Header("Wheel")]
        [SerializeField] private WheelCollider wheelCollider;

        [Tooltip("Trigger collider used for XR hover/select. (Do NOT use WheelCollider for interaction.)")]
        [SerializeField] private Collider interactionTriggerCollider;

        [Header("Input -> Torque")]
        [Tooltip("Controller downward speed (m/s) multiplied by this becomes motor torque.")]
        [SerializeField] private float torqueScale = 250f;

        [SerializeField] private float maxMotorTorque = 600f;

        [Tooltip("How quickly DesiredMotorTorque returns to 0 when not grabbed (units: torque per second).")]
        [SerializeField] private float torqueFriction = 1200f;

        [Tooltip("Ignore tiny controller movements (m/s).")]
        [SerializeField] private float velocityDeadzone = 0.05f;

        [Tooltip("If true, pushing controller DOWN drives wheel forward; if false, use forward/back motion.")]
        [SerializeField] private bool useDownwardPushModel = true;

        [Header("Debug")]
        [SerializeField] private bool verboseLogs = true;

        public float desiredMotorTorque { get; private set; }

        public bool isGrabbed => _interactorTransform != null;

        private XRSimpleInteractable _interactable;
        private Transform _interactorTransform;
        private Vector3 _lastInteractorPos;

        private Transform _root;

        private void Awake()
        {
            _root = transform.root;

            if (!wheelCollider)
                wheelCollider = GetComponent<WheelCollider>() ? GetComponent<WheelCollider>() : GetComponentInChildren<WheelCollider>(true);

            if (!wheelCollider)
                Logkat.Panic($"MarksWheelchairWheelInteractable [{name}]: Missing WheelCollider reference.");

            if (!interactionTriggerCollider)
                interactionTriggerCollider = GetComponent<Collider>() ? GetComponent<Collider>() : GetComponentInChildren<Collider>(true);

            if (!interactionTriggerCollider)
                Logkat.Panic($"MarksWheelchairWheelInteractable [{name}]: Missing interaction trigger collider.");

            if (!interactionTriggerCollider.isTrigger)
                Logkat.Warn($"MarksWheelchairWheelInteractable [{name}]: interactionTriggerCollider '{interactionTriggerCollider.name}' is not a Trigger. Direct interactors typically expect triggers; set isTrigger=true.");

            _interactable = GetComponent<XRSimpleInteractable>();
            if (!_interactable)
                Logkat.Panic($"MarksWheelchairWheelInteractable [{name}]: Missing XRSimpleInteractable.");

            // Make sure THIS collider is used for interaction.
            if (!_interactable.colliders.Contains(interactionTriggerCollider))
                _interactable.colliders.Add(interactionTriggerCollider);

            _interactable.selectEntered.AddListener(OnSelectEntered);
            _interactable.selectExited.AddListener(OnSelectExited);

            if (verboseLogs)
            {
                _interactable.hoverEntered.AddListener(_ => Logkat.Dev($"[{name}] HOVER ENTER"));
                _interactable.hoverExited.AddListener(_ => Logkat.Dev($"[{name}] HOVER EXIT"));
            }

            if (verboseLogs)
                Logkat.Dev($"MarksWheelchairWheelInteractable [{name}]: Awake OK. WheelCollider={wheelCollider.name}, InteractionCollider={interactionTriggerCollider.name}, InteractableColliders={_interactable.colliders.Count}");
        }

        private void FixedUpdate()
        {
            if (_interactorTransform)
            {
                var pos = _interactorTransform.position;
                var v = (pos - _lastInteractorPos) / Time.fixedDeltaTime;
                _lastInteractorPos = pos;

                float driveSpeed;

                if (useDownwardPushModel)
                {
                    // Down relative to chair/root.
                    var down = -_root.up;
                    driveSpeed = Vector3.Dot(v, down); // m/s downward
                }
                else
                {
                    // Forward/back relative to chair/root.
                    var fwd = _root.forward;
                    driveSpeed = Vector3.Dot(v, fwd); // m/s forward
                }

                if (Mathf.Abs(driveSpeed) < velocityDeadzone)
                    driveSpeed = 0f;

                var targetTorque = Mathf.Clamp(driveSpeed * torqueScale, -maxMotorTorque, maxMotorTorque);

                desiredMotorTorque = targetTorque;
            }
            else
            {
                // No grab: decay torque smoothly to 0.
                desiredMotorTorque = MoveTowardsWithFriction(desiredMotorTorque, 0f, torqueFriction);
            }
        }

        private float MoveTowardsWithFriction(float current, float target, float frictionPerSecond)
        {
            if (Mathf.Approximately(current, target)) return target;
            var maxDelta = frictionPerSecond * Time.fixedDeltaTime;
            return Mathf.MoveTowards(current, target, maxDelta);
        }

        private void OnSelectEntered(SelectEnterEventArgs args)
        {
            _interactorTransform = args.interactorObject.transform;
            _lastInteractorPos = _interactorTransform.position;

            if (verboseLogs)
                Logkat.Dev($"MarksWheelchairWheelInteractable [{name}]: SELECT ENTER by {_interactorTransform.name}");
        }

        private void OnSelectExited(SelectExitEventArgs args)
        {
            // Only clear if the exiting interactor is the one we’re tracking.
            var exiting = args.interactorObject.transform;

            if (_interactorTransform == exiting)
            {
                if (verboseLogs)
                    Logkat.Dev($"MarksWheelchairWheelInteractable [{name}]: SELECT EXIT by {exiting.name}");

                _interactorTransform = null;
            }
            else
            {
                if (verboseLogs)
                    Logkat.Warn($"MarksWheelchairWheelInteractable [{name}]: SELECT EXIT from {exiting.name} but current is {_interactorTransform?.name ?? "null"}");
            }
        }
    }
}
