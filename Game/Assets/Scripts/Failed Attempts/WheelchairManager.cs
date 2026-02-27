using System;
using UnityEngine;

namespace Interactions
{
    [DisallowMultipleComponent]
    public class WheelchairManager : MonoBehaviour
    {
        private WheelchairWheelInteractable leftWheel;

        private WheelchairWheelInteractable rightWheel;

        private void OnEnable()
        {
            var wheels = GetComponentsInChildren<WheelchairWheelInteractable>();

            foreach (var wheel in wheels)
            {
                if (wheel.name.IndexOf("Left", StringComparison.OrdinalIgnoreCase) >= 0)
                {
                    leftWheel = wheel;
                }
                else if (wheel.name.IndexOf("Right", StringComparison.OrdinalIgnoreCase) >= 0)
                {
                    rightWheel = wheel;
                }
            }

            if (leftWheel == null || rightWheel == null)
            {
                throw new InvalidOperationException("WheelchairManager: Could not assign both left and right wheels by name.");
            }
        }
    }
}
