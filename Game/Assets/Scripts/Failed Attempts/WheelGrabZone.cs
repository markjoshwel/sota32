using UnityEngine;
using UnityEngine.XR.Interaction.Toolkit;
using UnityEngine.XR.Interaction.Toolkit.Interactables;

namespace Interactions
{
    public class WheelGrabZone : MonoBehaviour
    {
        public float pushSpeed { get; private set; }

        private XRSimpleInteractable _interactable;
        private Transform _controller;
        private Vector3 _lastControllerPos;

        private void Awake()
        {
            _interactable = GetComponent<XRSimpleInteractable>();
            _interactable.selectEntered.AddListener(OnGrabStart);
            _interactable.selectExited.AddListener(OnGrabEnd);
        }

        private void FixedUpdate()
        {
            if (!_controller)
            {
                pushSpeed = 0f;
                return;
            }

            Vector3 velocity = (_controller.position - _lastControllerPos) / Time.fixedDeltaTime;
            _lastControllerPos = _controller.position;

            // wheelchair down = -wheelchairRig.up
            Vector3 wheelchairDown = -transform.root.up;
            pushSpeed = Mathf.Max(0f, Vector3.Dot(velocity, wheelchairDown));
        }

        private void OnGrabStart(SelectEnterEventArgs args)
        {
            _controller = args.interactorObject.transform;
        }

        private void OnGrabEnd(SelectExitEventArgs args)
        {
            _controller = null;
            pushSpeed = 0f;
        }
    }
}
