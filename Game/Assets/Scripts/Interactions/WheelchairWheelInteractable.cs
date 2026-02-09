using System;
using UnityEngine;

namespace Interactions
{
    [DisallowMultipleComponent]
    public class WheelchairWheelInteractable : MonoBehaviour
    {
        [SerializeField]
        private GameObject wheelCollider;

        private Action<float> onWheelSpin;
    }
}