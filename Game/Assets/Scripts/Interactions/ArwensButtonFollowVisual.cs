using UnityEngine;
using UnityEngine.XR.Interaction.Toolkit;
using UnityEngine.XR.Interaction.Toolkit.Interactables;
using UnityEngine.XR.Interaction.Toolkit.Interactors;

public class ArwensButtonFollowVisual : MonoBehaviour
{
    public Transform visualTarget;
    public Vector3 localAxis;
    public float resetSpeed = 5;

    private Vector3 initialLocalPos;
    
    private Vector3 offset;
    private Transform pokeAttachTransform;

    private XRSimpleInteractable interactable;
    private bool isFollowing = false;

    private void Start()
    {
        initialLocalPos = visualTarget.localPosition;
        
        interactable = GetComponent<XRSimpleInteractable>();
        interactable.hoverEntered.AddListener(OnHoverEntered);
        interactable.hoverExited.AddListener(Reset);
    }

    private void OnHoverEntered(HoverEnterEventArgs hover)
    {
        if (hover.interactorObject is XRPokeInteractor pokeInteractor)
        {
            isFollowing = true;
            pokeAttachTransform = pokeInteractor.attachTransform;
            offset = visualTarget.position - pokeAttachTransform.position;
        }
    }

    private void Reset(BaseInteractionEventArgs hover)
    {
        if (hover.interactorObject is XRPokeInteractor)
        {
            isFollowing = false;
        }
    }

    public void Freeze()
    {
        // TODO https://youtu.be/bts8VkDP_vU?si=Q8oEuSq20LPihYtZ&t=806
    }

    private void Update()
    {
        if (isFollowing && pokeAttachTransform != null)
        {
            Vector3 localTargetPosition = visualTarget.InverseTransformDirection(pokeAttachTransform.position + offset);
            Vector3 constraintLocalTargetPosition = Vector3.Project(localTargetPosition, localAxis);
            visualTarget.position = visualTarget.TransformPoint(constraintLocalTargetPosition);
        }
        else
        {
            visualTarget.localPosition = Vector3.Lerp(visualTarget.localPosition, initialLocalPos, Time.deltaTime * resetSpeed);
        }
    }

    private void Pressed()
    {
        Debug.Log("pressed");
    }
}