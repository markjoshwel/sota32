using PokkatCore;
using UnityEngine;

namespace Interactions
{
    public class MarksWheelchairManager : MonoBehaviour
    {
        /// <summary>
        ///     character controller to move, if wheelchair is in xr origin
        /// </summary>
        [HelpBox("will use wheelchair game object transform if not set", HelpBoxMessageType.Warning)]
        [SerializeField] private CharacterController characterController;
        
        /// <summary>
        ///     resolved left wheelchair game object
        /// </summary>
        private MarksWheelchairWheelInteractable _leftWheelInteractable;
        
        /// <summary>
        ///     resolved right wheelchair game object
        /// </summary>
        private MarksWheelchairWheelInteractable _rightWheelInteractable;
        
        /// <summary>
        ///     the chosen object to manipulate
        /// </summary>
        private Transform _wheelchairTarget;

        /// <summary>
        ///    ratio of wheel rotation to movement distance
        /// </summary>
        [SerializeField] [Range(0.01f, 5.0f)]
        private float gearRatio = 1.0f;

        private void Awake()
        {
            // resolve which object to manipulate
            _wheelchairTarget = characterController ? characterController.transform : gameObject.transform;
            
            // resolve wheels via name
            var wheels = GetComponentsInChildren<MarksWheelchairWheelInteractable>();
            foreach (var wheel in wheels)
            {
                var n = wheel.name.ToLowerInvariant();
                if (n.Contains("left"))
                {
                    Logkat.Dev("MarksWheelchairManager: found left wheel interactable");
                    _leftWheelInteractable = wheel;
                }
                else if (n.Contains("right"))
                {
                    Logkat.Dev("MarksWheelchairManager: found right wheel interactable");
                    _rightWheelInteractable = wheel;
                }
            }
            if (!_leftWheelInteractable || !_rightWheelInteractable)
            {
                Logkat.Panic("MarksWheelchairManager: could not find both left and right wheel interactables");
            }
        }
        
        private void FixedUpdate()
        {
            // get rotation values from both wheels
            var leftRotation = _leftWheelInteractable.rotation;
            var rightRotation = _rightWheelInteractable.rotation;
            
            // calculate forward movement (average of both wheels)
            var forwardMovement = (leftRotation + rightRotation) * 0.5f * gearRatio;
            
            // calculate turning (difference between wheels)
            // if right wheel rotates more, turn right (positive rotation)
            // if left wheel rotates more, turn left (negative rotation)
            var turnAmount = (rightRotation - leftRotation) * gearRatio;
            
            // apply rotation (turning)
            if (!Mathf.Approximately(turnAmount, 0f))
            {
                _wheelchairTarget.Rotate(Vector3.up, turnAmount * Time.fixedDeltaTime * 50f);
            }
            
            // apply forward/backward movement
            if (Mathf.Approximately(forwardMovement, 0f)) return;
            
            var movement = forwardMovement * Time.fixedDeltaTime * _wheelchairTarget.forward;
            
            if (characterController)
            {
                characterController.Move(movement);
            }
            else
            {
                _wheelchairTarget.position += movement;
            }
        }
    }
}