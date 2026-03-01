using UnityEngine.XR.Interaction.Toolkit;
using UnityEngine.XR.Interaction.Toolkit.Interactables;

namespace Interactions
{
    /// <summary>
    /// disposable interactable that fuses to the wheel via a fixed joint and destroys itself on deselect
    /// </summary>
    public class MarksWheelGrabber : XRGrabInteractable
    {
        /// <summary>
        /// initialise grab point interactable defaults
        /// </summary>
        protected override void Awake()
        {
            base.Awake();

            movementType = MovementType.VelocityTracking;
            trackRotation = false;
            throwOnDetach = false;
        }

        /// <summary>
        /// destroy the grab point object when selection ends
        /// </summary>
        protected override void OnSelectExited(SelectExitEventArgs args)
        {
            base.OnSelectExited(args);
            Destroy(gameObject);
        }
    }
}