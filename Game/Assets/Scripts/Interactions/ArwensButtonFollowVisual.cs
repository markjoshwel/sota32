using UnityEngine;
using UnityEngine.Events;
using UnityEngine.XR.Interaction.Toolkit;
using UnityEngine.XR.Interaction.Toolkit.Interactables;
using UnityEngine.XR.Interaction.Toolkit.Interactors;

public class ArwensButtonFollowVisual : MonoBehaviour
{
    public Transform visualTarget;
    public Vector3 localAxis;
    public float resetSpeed = 5;
    private float followAngleThreshold = 45f;
    
    [Space]
    public UnityEvent onPressed;

    private bool freeze = false;

    private Vector3 initialLocalPos;
    
    private Vector3 offset;
    private Transform pokeAttachTransform;

    private XRSimpleInteractable interactable;
    private bool isFollowing = false;

    private void Start()
    {
        initialLocalPos = visualTarget.localPosition;
        
        interactable = GetComponent<XRSimpleInteractable>();
        interactable.hoverEntered.AddListener(Follow);
        interactable.hoverExited.AddListener(Reset);
        interactable.selectEntered.AddListener(Freeze);
        interactable.selectEntered.AddListener(Pressed);
        interactable.selectExited.AddListener(Depressed);
    }

    private void Follow(HoverEnterEventArgs hover)
    {
        Debug.Log($"[follow] interactor: {hover.interactorObject}");
        
        if (hover.interactorObject is XRPokeInteractor pokeInteractor)
        {
            isFollowing = true;
            freeze = false;

            pokeAttachTransform = pokeInteractor.attachTransform;
            offset = visualTarget.position - pokeAttachTransform.position;

            float pokeAngle = Vector3.Angle(offset, visualTarget.TransformDirection(localAxis));

            if (pokeAngle > followAngleThreshold)
            {
                isFollowing = false;
                freeze = true;
            }
        }
    }

    private void Reset(BaseInteractionEventArgs hover)
    {
        Debug.Log($"[reset] interactor: {hover.interactorObject}");
        
        if (hover.interactorObject is XRPokeInteractor)
        {
            isFollowing = false;
            freeze = false;
        }
    }

    public void Freeze(BaseInteractionEventArgs hover)
    {
        Debug.Log($"[freeze] interactor: {hover.interactorObject}");
        
        if (hover.interactorObject is XRPokeInteractor)
        {
            freeze = true;
        }
    }

    private void Update()
    {
        if (freeze) return;
        
        Transform selectedVisualTarget = visualTarget;
        // Transform selectedVisualTarget = visualTarget.parent;
    
        if (isFollowing && pokeAttachTransform != null)
        {
            Vector3 localTargetPosition = selectedVisualTarget.InverseTransformPoint(pokeAttachTransform.position + offset); // InverseTransformPoint
            Vector3 constraintLocalTargetPosition = Vector3.Project(localTargetPosition, localAxis);
            visualTarget.position = selectedVisualTarget.TransformPoint(constraintLocalTargetPosition);
        }
        else
        {
            visualTarget.localPosition = Vector3.Lerp(visualTarget.localPosition, initialLocalPos, Time.deltaTime * resetSpeed);
        }
    }
    
    // private void Update()
    // {
    //     if (freeze) return;
    //
    //     Transform buttonRoot = visualTarget.parent; // "Button" — stable reference
    //
    //     if (isFollowing && pokeAttachTransform != null)
    //     {
    //         Vector3 localTargetPosition = buttonRoot.InverseTransformPoint(pokeAttachTransform.position + offset);
    //         Vector3 constraintLocalTargetPosition = Vector3.Project(localTargetPosition, localAxis);
    //         visualTarget.position = buttonRoot.TransformPoint(constraintLocalTargetPosition);
    //     }
    //     else
    //     {
    //         visualTarget.localPosition = Vector3.Lerp(visualTarget.localPosition, initialLocalPos, Time.deltaTime * resetSpeed);
    //     }
    // }

    public void Pressed(SelectEnterEventArgs hover)
    {
        Debug.Log($"[pressed] interactor: {hover.interactorObject}");
        
        if (hover.interactorObject is XRPokeInteractor)
        {
            Debug.Log("pressed");
            onPressed.Invoke();
        }
    }
    
    private void Depressed(SelectExitEventArgs hover)
    {
        Debug.Log($"[depressed] interactor: {hover.interactorObject}");
        
        if (hover.interactorObject is XRPokeInteractor)
        {
            freeze = false;
            isFollowing = false;
        }
    }
}