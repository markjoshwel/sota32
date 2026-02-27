// // SPDX-License-Identifier: Unlicense OR 0BSD
//
// using UnityEngine;
// using UnityEngine.XR.Interaction.Toolkit;
// using UnityEngine.XR.Interaction.Toolkit.Interactables;
//
// namespace Interactions
// {
//     [DisallowMultipleComponent]
//     public class WheelchairPropulsion : MonoBehaviour
//     {
//         /// <summary>
//         ///     main rigidbody for the wheelchair body that should be moved by the wheels
//         /// </summary>
//         [SerializeField] private Rigidbody body;
//
//         /// <summary>
//         ///     transform of the left wheel object (e.g. Left Wheel Wiring)
//         /// </summary>
//         [SerializeField]
//         Transform leftWheel;
//
//         /// <summary>
//         ///     transform of the right wheel object (e.g. Right Wheel Wiring)
//         /// </summary>
//         [SerializeField] private Transform rightWheel;
//
//         /// <summary>
//         ///     grab interactable on the left wheel
//         /// </summary>
//         [SerializeField] private XRGrabInteractable leftWheelGrab;
//
//         /// <summary>
//         ///     grab interactable on the right wheel
//         /// </summary>
//         [SerializeField] private XRGrabInteractable rightWheelGrab;
//
//         /// <summary>
//         ///     scale factor converting wheel spin (degrees per second) into forward speed
//         /// </summary>
//         public float forwardScale = 0.0008f;
//
//         /// <summary>
//         ///     scale factor converting wheel spin difference into rotational speed (yaw)
//         /// </summary>
//         public float turnScale = 0.0002f;
//
//         /// <summary>
//         ///     maximum linear speed of the wheelchair in metres per second
//         /// </summary>
//         public float maxSpeed = 3f;
//
//         /// <summary>
//         ///     maximum yaw speed of the wheelchair in degrees per second
//         /// </summary>
//         public float maxAngularSpeedDegrees = 90f;
//
//         /// <summary>
//         ///     minimum wheel spin magnitude (deg/s) required before propulsion is applied
//         /// </summary>
//         public float pushThreshold = 15f;
//
//         /// <summary>
//         ///     factor applied to velocity each fixed update when not being pushed
//         /// </summary>
//         public float idleDragFactor = 0.9f;
//
//         private float _leftLastAngle;
//         private float _rightLastAngle;
//
//         private float _leftAngularVelocity;
//         private float _rightAngularVelocity;
//
//         private bool _leftGrabbed;
//         private bool _rightGrabbed;
//
//         private bool _initialised;
//
//         private void Awake()
//         {
//             if (leftWheelGrab != null)
//             {
//                 leftWheelGrab.selectEntered.AddListener(OnLeftGrabStarted);
//                 leftWheelGrab.selectExited.AddListener(OnLeftGrabEnded);
//             }
//
//             if (rightWheelGrab == null) return;
//             rightWheelGrab.selectEntered.AddListener(OnRightGrabStarted);
//             rightWheelGrab.selectExited.AddListener(OnRightGrabEnded);
//         }
//
//         private void Start()
//         {
//             if (body == null)
//             {
//                 body = GetComponent<Rigidbody>();
//             }
//
//             if (leftWheel != null)
//             {
//                 _leftLastAngle = GetWheelAngle(leftWheel);
//             }
//
//             if (rightWheel != null)
//             {
//                 _rightLastAngle = GetWheelAngle(rightWheel);
//             }
//
//             _initialised = body != null && leftWheel != null && rightWheel != null;
//         }
//
//         private void OnDestroy()
//         {
//             if (leftWheelGrab != null)
//             {
//                 leftWheelGrab.selectEntered.RemoveListener(OnLeftGrabStarted);
//                 leftWheelGrab.selectExited.RemoveListener(OnLeftGrabEnded);
//             }
//
//             if (rightWheelGrab == null) return;
//             rightWheelGrab.selectEntered.RemoveListener(OnRightGrabStarted);
//             rightWheelGrab.selectExited.RemoveListener(OnRightGrabEnded);
//         }
//
//         private void FixedUpdate()
//         {
//             if (!_initialised)
//             {
//                 return;
//             }
//
//             UpdateWheelAngularVelocity(leftWheel, ref _leftLastAngle, ref _leftAngularVelocity, _leftGrabbed);
//             UpdateWheelAngularVelocity(rightWheel, ref _rightLastAngle, ref _rightAngularVelocity, _rightGrabbed);
//
//             var leftMagnitude = Mathf.Abs(_leftAngularVelocity);
//             var rightMagnitude = Mathf.Abs(_rightAngularVelocity);
//
//             if (leftMagnitude < pushThreshold && rightMagnitude < pushThreshold)
//             {
//                 ApplyIdleDrag();
//                 return;
//             }
//
//             ApplyPropulsion();
//         }
//
//         private void OnLeftGrabStarted(SelectEnterEventArgs args)
//         {
//             _leftGrabbed = true;
//             _leftLastAngle = GetWheelAngle(leftWheel);
//         }
//
//         private void OnLeftGrabEnded(SelectExitEventArgs args)
//         {
//             _leftGrabbed = false;
//         }
//
//         private void OnRightGrabStarted(SelectEnterEventArgs args)
//         {
//             _rightGrabbed = true;
//             _rightLastAngle = GetWheelAngle(rightWheel);
//         }
//
//         private void OnRightGrabEnded(SelectExitEventArgs args)
//         {
//             _rightGrabbed = false;
//         }
//
//         private static float GetWheelAngle(Transform wheel)
//         {
//             // assumes the wheel spins around its local X axis.
//             // if your model spins around Z instead, change to localEulerAngles.z.
//             return wheel.localEulerAngles.x;
//         }
//
//         private void UpdateWheelAngularVelocity(
//             Transform wheel,
//             ref float lastAngle,
//             ref float angularVelocity,
//             bool isGrabbed)
//         {
//             var currentAngle = GetWheelAngle(wheel);
//             var deltaAngle = Mathf.DeltaAngle(lastAngle, currentAngle);
//             lastAngle = currentAngle;
//
//             var currentAngularVelocity = deltaAngle / Time.fixedDeltaTime;
//
//             angularVelocity = isGrabbed ? currentAngularVelocity : Mathf.Lerp(angularVelocity, 0f, 5f * Time.fixedDeltaTime);
//         }
//
//         private void ApplyIdleDrag()
//         {
//             if (body.linearVelocity.sqrMagnitude <= 0.0001f)
//             {
//                 return;
//             }
//
//             var factor = Mathf.Pow(idleDragFactor, Time.fixedDeltaTime * 60f);
//             body.linearVelocity *= factor;
//             body.angularVelocity *= factor;
//         }
//
//         private void ApplyPropulsion()
//         {
//             var left = _leftAngularVelocity;
//             var right = _rightAngularVelocity;
//
//             var forwardSpin = (left + right) * 0.5f;
//             var turnSpin = (right - left) * 0.5f;
//
//             var forward = body.transform.forward;
//
//             var deltaVelocity = forward * (forwardSpin * forwardScale * Time.fixedDeltaTime);
//             body.linearVelocity += deltaVelocity;
//
//             var deltaYawDegrees = turnSpin * turnScale * Time.fixedDeltaTime;
//             var deltaYawRadians = deltaYawDegrees * Mathf.Deg2Rad;
//
//             var angularVelocity = body.angularVelocity;
//             angularVelocity.y += deltaYawRadians;
//             body.angularVelocity = angularVelocity;
//
//             ClampSpeeds();
//         }
//
//         private void ClampSpeeds()
//         {
//             if (body.linearVelocity.magnitude > maxSpeed)
//             {
//                 body.linearVelocity = body.linearVelocity.normalized * maxSpeed;
//             }
//
//             var currentYawDegrees = body.angularVelocity.y * Mathf.Rad2Deg;
//             currentYawDegrees = Mathf.Clamp(currentYawDegrees, -maxAngularSpeedDegrees, maxAngularSpeedDegrees);
//             body.angularVelocity = new Vector3(0f, currentYawDegrees * Mathf.Deg2Rad, 0f);
//         }
//     }
// }
