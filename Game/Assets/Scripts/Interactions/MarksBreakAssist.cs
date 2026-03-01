using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR;

namespace Interactions
{
    /// <summary>
    /// supplies the current velocity of a specific xr node to drive the wheel's abs brake assist logic
    /// </summary>
    public class MarksBreakAssist : MonoBehaviour
    {
        /// <summary>
        /// the xr node to track velocity for; should be LeftHand or RightHand
        /// </summary>
        [SerializeField, Tooltip("the xr node to track velocity for; should be left/right controller")]
        private XRNode trackedNode;

        /// <summary>
        /// most recently tracked velocity of the attached node
        /// </summary>
        public Vector3 velocity => _velocity;
        private Vector3 _velocity = Vector3.zero;

        /// <summary>
        /// reusable device list to avoid per-frame allocation
        /// </summary>
        private readonly List<InputDevice> _devices = new();

        /// <summary>
        /// poll tracked velocity from the xr input device each frame
        /// </summary>
        private void Update()
        {
            InputDevices.GetDevicesAtXRNode(trackedNode, _devices);
            if (_devices.Count > 0)
                _devices[0].TryGetFeatureValue(CommonUsages.deviceVelocity, out _velocity);
        }
    }
}