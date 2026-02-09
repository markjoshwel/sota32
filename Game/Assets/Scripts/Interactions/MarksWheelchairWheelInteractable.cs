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
        /// <summary>
        ///     wheel collider to track grabbing
        /// </summary>
        [SerializeField] private Collider wheelCollider;
        
        /// <summary>
        ///     sensitivity multiplier for rotation input
        /// </summary>
        [SerializeField] [Range(0.01f, 5.0f)]
        public float rotationSensitivity = 1.0f;
        
        /// <summary>
        ///     friction applied per second to slow rotation towards 0
        /// </summary>
        [SerializeField] private float friction = 2.0f;
        
        /// <summary>
        ///     current rotation to be read by MarksWheelchairManager per FixedUpdate
        /// </summary>
        [HideInInspector]
        public float rotation;
        
        /// <summary>
        ///     whether the wheel is currently grabbed by a VR controller
        /// </summary>
        public bool isGrabbed => _controller != null;
        
        private XRSimpleInteractable _interactable;
        private Transform _controller;
        private Vector3 _lastControllerPos;

        private void Awake()
        {
            Logkat.Dev($"MarksWheelchairWheelInteractable [{name}]: Awake starting...");
            
            // find and set mesh collider if wheel collider not assigned
            if (!wheelCollider)
            {
                var wheelMeshCollider = GetComponentInChildren<MeshCollider>();
                if (wheelMeshCollider)
                {
                    Logkat.Dev($"MarksWheelchairWheelInteractable [{name}]: Found MeshCollider, wired myself up!");
                    wheelCollider = wheelMeshCollider;
                }
                else
                {
                    Logkat.Panic($"MarksWheelchairWheelInteractable [{name}]: No wheelCollider assigned and no MeshCollider found in children");
                }
            }
            else
            {
                Logkat.Dev($"MarksWheelchairWheelInteractable [{name}]: wheelCollider already assigned: {wheelCollider.name}");
            }
            
            // setup interactable events
            _interactable = GetComponent<XRSimpleInteractable>();
            if (_interactable)
            {
                Logkat.Dev($"MarksWheelchairWheelInteractable [{name}]: Found XRSimpleInteractable, registering select events...");
                _interactable.selectEntered.AddListener(OnGrabStart);
                _interactable.selectExited.AddListener(OnGrabEnd);
                Logkat.Dev($"MarksWheelchairWheelInteractable [{name}]: Interactable enabled={_interactable.enabled}, colliders count={_interactable.colliders.Count}");
            }
            else
            {
                Logkat.Panic($"MarksWheelchairWheelInteractable [{name}]: XRSimpleInteractable component NOT FOUND!");
            }
        }

        private void Start()
        {
            Logkat.Dev($"MarksWheelchairWheelInteractable [{name}]: Start - interactable isHovered={_interactable?.isHovered}, isSelected={_interactable?.isSelected}");
        }

        private void FixedUpdate()
        {
            if (_controller)
            {
                // calculate controller velocity
                var velocity = (_controller.position - _lastControllerPos) / Time.fixedDeltaTime;
                _lastControllerPos = _controller.position;
                
                // wheelchair down direction (push direction)
                var wheelchairDown = -transform.root.up;
                
                // calculate how fast the controller moved downward
                var downwardSpeed = Vector3.Dot(velocity, wheelchairDown);
                
                // increase rotation based on downward velocity (pushing down = positive rotation)
                rotation += downwardSpeed * rotationSensitivity;
            }
            
            // apply friction to slow rotation towards 0
            ApplyFriction();
        }
        
        private void ApplyFriction()
        {
            if (Mathf.Approximately(rotation, 0f))
            {
                rotation = 0f;
                return;
            }
            
            var frictionAmount = friction * Time.fixedDeltaTime;

            // forward rotation (positive), subtract friction until 0
            rotation = rotation > 0f ? Mathf.Max(0f, rotation - frictionAmount) :
                // backward rotation (negative), add friction until 0
                Mathf.Min(0f, rotation + frictionAmount);
        }
        
        private void OnGrabStart(SelectEnterEventArgs args)
        {
            _controller = args.interactorObject.transform;
            _lastControllerPos = _controller.position;
            Logkat.Dev($"MarksWheelchairWheelInteractable [{name}]: GRABBED by {args.interactorObject.transform.name} at position {_lastControllerPos}");
        }
        
        private void OnGrabEnd(SelectExitEventArgs args)
        {
            Logkat.Dev($"MarksWheelchairWheelInteractable [{name}]: RELEASED by {args.interactorObject.transform.name}");
            _controller = null;
        }
    }
}