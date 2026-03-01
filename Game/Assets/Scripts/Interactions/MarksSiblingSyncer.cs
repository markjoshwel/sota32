using UnityEngine;

namespace Interactions
{
    /// <summary>
    /// syncs this transform's position and rotation to a sibling target, preserving the initial local offset
    /// </summary>
    public class MarksSiblingSyncer : MonoBehaviour
    {
        /// <summary>
        /// the sibling transform to follow
        /// </summary>
        [Tooltip("the sibling transform to follow")]
        public Transform target;

        /// <summary>
        /// local position offset relative to target at start
        /// </summary>
        private Vector3 _offset;

        /// <summary>
        /// capture the initial offset between this transform and the target
        /// </summary>
        private void Start()
        {
            _offset = transform.localPosition - target.localPosition;
        }

        /// <summary>
        /// apply the rotated offset and match rotation to the target each frame
        /// </summary>
        private void Update()
        {
            var rotatedOffset = target.localRotation * _offset;
            transform.localPosition = target.localPosition + rotatedOffset;
            transform.rotation = target.rotation;
        }
    }
}