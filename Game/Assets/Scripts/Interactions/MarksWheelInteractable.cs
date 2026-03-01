using System.Collections;
using UnityEngine;
using UnityEngine.XR.Interaction.Toolkit;
using UnityEngine.XR.Interaction.Toolkit.Interactables;
using UnityEngine.XR.Interaction.Toolkit.Interactors;

namespace Interactions
{
    /// <summary>
    /// inheriting from XRBaseInteractable, handles dynamic grab point spawning, abs-style braking, and auto-deselection
    /// </summary>
    public class MarksWheelInteractable : XRBaseInteractable
    {
        /// <summary>
        /// rigidbody of the wheel
        /// </summary>
        private Rigidbody _rb;

        /// <summary>
        /// radius of the wheel's sphere collider, used for deselection threshold calculation
        /// </summary>
        private float _wheelRadius;

        /// <summary>
        /// active grab point mediating the physics interaction between controller and wheel
        /// </summary>
        private GameObject _grabPoint;

        /// <summary>
        /// whether haptic feedback is enabled on wheel deceleration
        /// </summary>
        [SerializeField] private bool hapticsEnabled = true;

        /// <summary>
        /// distance from wheel collider surface at which the interaction manager will cancel selection
        /// </summary>
        [Range(0, 0.5f), Tooltip("distance from wheel collider at which the interaction manager will cancel selection")]
        [SerializeField] private float deselectionThreshold = 0.25f;

        /// <summary>
        /// initialise rigidbody and wheel radius
        /// </summary>
        private void Start()
        {
            _rb = GetComponent<Rigidbody>();

            var sphereCollider = GetComponent<SphereCollider>();
            _wheelRadius = sphereCollider != null ? sphereCollider.radius : 0.3f;
        }

        /// <summary>
        /// cancel grab on the wheel itself, spawn a grab point, and start assist coroutines
        /// </summary>
        protected override void OnSelectEntered(SelectEnterEventArgs eventArgs)
        {
            base.OnSelectEntered(eventArgs);

            var interactor = eventArgs.interactorObject as XRBaseInteractor;
            if (interactor == null) return;

            interactionManager.CancelInteractableSelection((IXRSelectInteractable)this);

            SpawnGrabPoint(interactor);
            StartCoroutine(BrakeAssist(interactor));
            StartCoroutine(MonitorDetachDistance(interactor));

            if (hapticsEnabled)
                StartCoroutine(SendHapticFeedback(interactor));
        }

        /// <summary>
        /// instantiate a grab point at the interactor's position, fused to the wheel via a fixed joint
        /// </summary>
        /// <param name="interactor">interactor making the selection</param>
        private void SpawnGrabPoint(XRBaseInteractor interactor)
        {
            if (_grabPoint)
                interactionManager.CancelInteractableSelection(
                    (IXRSelectInteractable)_grabPoint.GetComponent<MarksWheelGrabber>()
                );

            _grabPoint = new GameObject(
                $"{transform.name}'s grabPoint",
                typeof(MarksWheelGrabber),
                typeof(Rigidbody),
                typeof(FixedJoint)
            )
            {
                transform =
                {
                    position = interactor.transform.position
                }
            };

            _grabPoint.GetComponent<FixedJoint>().connectedBody = _rb;

            interactionManager.SelectEnter(
                interactor,
                (IXRSelectInteractable)_grabPoint.GetComponent<MarksWheelGrabber>()
            );
        }

        /// <summary>
        /// abs-style braking: respawn grab point at controller position while forward velocity approximates zero
        /// </summary>
        private IEnumerator BrakeAssist(XRBaseInteractor interactor)
        {
            var velocitySupplier = interactor.GetComponent<MarksBreakAssist>();
            if (velocitySupplier == null) yield break;

            while (_grabPoint)
            {
                if (velocitySupplier.velocity.z is < 0.05f and > -0.05f)
                {
                    _rb.AddTorque(-_rb.angularVelocity.normalized * 25f);
                    SpawnGrabPoint(interactor);
                }

                yield return new WaitForFixedUpdate();
            }
        }

        /// <summary>
        /// cancel selection if the interactor drifts beyond the wheel radius plus deselection threshold
        /// </summary>
        private IEnumerator MonitorDetachDistance(XRBaseInteractor interactor)
        {
            while (_grabPoint)
            {
                if (Vector3.Distance(transform.position, interactor.transform.position) >= _wheelRadius + deselectionThreshold)
                    interactionManager.CancelInteractorSelection((IXRSelectInteractor)interactor);

                yield return null;
            }
        }

        /// <summary>
        /// send haptic impulses to the grabbing controller proportional to wheel deceleration magnitude
        /// </summary>
        private IEnumerator SendHapticFeedback(XRBaseInteractor interactor)
        {
            const float runInterval = 0.1f;

            // XRBaseInputInteractor exposes SendHapticImpulse directly in XRI 3.0
            var hapticInteractor = interactor as XRBaseInputInteractor;

            var lastAngularVelocity = new Vector3(
                transform.InverseTransformDirection(_rb.angularVelocity).x, 0f, 0f
            );

            while (_grabPoint)
            {
                var currentAngularVelocity = new Vector3(
                    transform.InverseTransformDirection(_rb.angularVelocity).x, 0f, 0f
                );
                var angularAcceleration = (currentAngularVelocity - lastAngularVelocity) / runInterval;

                if (Vector3.Dot(currentAngularVelocity.normalized, angularAcceleration.normalized) < 0f)
                {
                    var impulseAmplitude = Mathf.Abs(angularAcceleration.x);

                    if (impulseAmplitude > 1.5f && hapticInteractor != null)
                        hapticInteractor.SendHapticImpulse(
                            Remap(impulseAmplitude, 1.5f, 40f, 0f, 1f),
                            runInterval * 2f
                        );
                }

                lastAngularVelocity = currentAngularVelocity;
                yield return new WaitForSeconds(runInterval);
            }
        }

        /// <summary>
        /// remaps a float value from one range to another
        /// </summary>
        private static float Remap(float value, float from1, float to1, float from2, float to2)
        {
            return (value - from1) / (to1 - from1) * (to2 - from2) + from2;
        }
    }
}
