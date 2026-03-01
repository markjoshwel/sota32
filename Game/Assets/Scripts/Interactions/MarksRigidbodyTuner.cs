using UnityEngine;

namespace Interactions
{
    public class MarksRigidbodyTuner : MonoBehaviour
    {
        /// <summary>
        /// rigidbody to modify
        /// </summary>
        private Rigidbody _rb;

        /// <summary>
        /// upper bound of the rigidbody's angular velocity; unity default is 7
        /// </summary>
        [Header("maximum angular velocity")]
        [SerializeField, Range(0, 100)]
        private float maxAngularVelocity = 7f;

        /// <summary>
        /// whether to override the automatically calculated centre of mass
        /// </summary>
        [Header("centre of mass override")]
        [SerializeField]
        private bool useCustomCentreOfMass = false;

        /// <summary>
        /// custom centre of mass in local space; only applied when useCustomCentreOfMass is true
        /// </summary>
        [SerializeField]
        private Vector3 customCentreOfMass;

        /// <summary>
        /// initialise rigidbody reference and apply angular velocity cap
        /// </summary>
        private void Start()
        {
            _rb = GetComponent<Rigidbody>();
            _rb.maxAngularVelocity = maxAngularVelocity;

            if (useCustomCentreOfMass)
                _rb.centerOfMass = customCentreOfMass;
        }

        /// <summary>
        /// update centre of mass override each frame
        /// </summary>
        private void Update()
        {
            if (useCustomCentreOfMass)
                _rb.centerOfMass = customCentreOfMass;
            else
                _rb.ResetCenterOfMass();
        }
    }
}
