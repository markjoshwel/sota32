using UnityEngine;
using UnityEngine.XR.Interaction.Toolkit.Filtering;
using UnityEngine.XR.Interaction.Toolkit.Interactors;
using UnityEngine.XR.Interaction.Toolkit.Interactables;

namespace Interactions
{
    public class PokeOnlyFilter : MonoBehaviour, IXRHoverFilter, IXRSelectFilter
    {
        public bool canProcess => isActiveAndEnabled;

        public bool Process(IXRHoverInteractor interactor, IXRHoverInteractable interactable)
        {
            return interactor is XRPokeInteractor;
        }

        public bool Process(IXRSelectInteractor interactor, IXRSelectInteractable interactable)
        {
            return interactor is XRPokeInteractor;
        }
    }
}