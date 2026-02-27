using UnityEngine;

namespace Interactions
{
    public class WheelchairPushLocomotion : MonoBehaviour
    {
        public WheelGrabZone leftWheel;
        public WheelGrabZone rightWheel;
        public CharacterController characterController;

        [Header("Tuning")]
        public float pushToForward = 2f;
        public float pushToTurn = 1f;
        public float maxSpeed = 3f;

        void Update()
        {
            if (!characterController || !leftWheel || !rightWheel)
                return;

            var leftPush = leftWheel.pushSpeed;
            var rightPush = rightWheel.pushSpeed;

            var forward = transform.forward;
            var right = transform.right;

            var move = forward * ((leftPush + rightPush) * 0.5f * pushToForward)
                       + right * ((rightPush - leftPush) * 0.5f * pushToTurn);

            move = Vector3.ClampMagnitude(move, maxSpeed);
            characterController.Move(move * Time.deltaTime);
        }
    }
}
