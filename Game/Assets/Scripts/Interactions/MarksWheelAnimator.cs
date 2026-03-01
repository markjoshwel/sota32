using UnityEngine;

namespace Interactions
{
    /// <summary>
    /// syncs the visual mesh rotation of both drive wheels to their physical rigidbody counterparts
    /// </summary>
    public class MarksWheelAnimator : MonoBehaviour
    {
        /// <summary>
        /// rigidbody of the wheelchair body, used to gate animation on movement
        /// </summary>
        public Rigidbody bodyPhysics;

        /// <summary>
        /// physics transform of the left drive wheel
        /// </summary>
        public Transform wheelLeftPhysics;

        /// <summary>
        /// physics transform of the right drive wheel
        /// </summary>
        public Transform wheelRightPhysics;

        /// <summary>
        /// visual mesh transform of the left drive wheel
        /// </summary>
        public Transform wheelLeftVisual;

        /// <summary>
        /// visual mesh transform of the right drive wheel
        /// </summary>
        public Transform wheelRightVisual;

        /// <summary>
        /// animate drive wheels when the body is in motion
        /// </summary>
        private void Update()
        {
            if (bodyPhysics.linearVelocity.magnitude > 0.05f)
                RotateWheels();
        }

        /// <summary>
        /// match visual mesh rotation to the physical wheel rotation
        /// </summary>
        private void RotateWheels()
        {
            wheelLeftVisual.rotation = wheelLeftPhysics.rotation;
            wheelRightVisual.rotation = wheelRightPhysics.rotation;
        }
    }
}