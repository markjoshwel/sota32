using System.Collections;
using UnityEngine;

public class TrafficLight : MonoBehaviour
{
    public enum State
    {
        Red,
        Green,
        Yellow,
        DisabledCrossing
    }
    [SerializeField] private Transform lightsObject;
    [SerializeField] private GameObject[] greenLights, yellowLights, redLights;
    [SerializeField] private float greenDuration = 5f, yellowDuration = 2f, redDuration = 5f, greenRedVariance = 2f;
    [SerializeField] private float disabledCrossingDuration = 30f; // Extended duration for disabled crossing
    [SerializeField] private GameObject vehicleStopTriggerBox;
    public State currentState = State.Red;
    
    private bool disabledCrossingRequested = false;
    private Coroutine trafficLightCoroutine;
    
    private IEnumerator TrafficLightCycle()
    {
        while (true)
        {
            switch (currentState)
            {
                case State.Yellow:
                    yield return new WaitForSeconds(yellowDuration);
                    currentState = State.Red;
                    SetLights(redLights);
                    break;
                case State.Green:
                    yield return new WaitForSeconds(Random.Range(greenDuration-greenRedVariance,greenDuration+greenRedVariance));
                    currentState = State.Yellow;
                    SetLights(yellowLights);
                    break;
                case State.Red:
                    yield return new WaitForSeconds(Random.Range(redDuration - greenRedVariance, redDuration + greenRedVariance));
                    // Check if disabled crossing was requested during red state
                    if (disabledCrossingRequested)
                    {
                        currentState = State.DisabledCrossing;
                        SetLights(redLights); // Keep red lights on
                    }
                    else
                    {
                        currentState = State.Green;
                        SetLights(greenLights);
                    }
                    break;
                case State.DisabledCrossing:
                    yield return new WaitForSeconds(disabledCrossingDuration);
                    disabledCrossingRequested = false;
                    currentState = State.Green;
                    SetLights(greenLights);
                    break;
            }
        }
    }
    


    private void SetLights(GameObject[] lightsArray)
    {
        for (int i = 0; i < lightsObject.childCount; i++)
        {
            lightsObject.GetChild(i).gameObject.SetActive(false);
        }
        foreach (var light in lightsArray)
        {
            light.SetActive(true);
        }
    }

    /// <summary>
    /// Call this function to request a disabled crossing.
    /// The traffic light will switch to red and stay red for an extended duration.
    /// Can be called from XR input or any other trigger.
    /// </summary>
    public void RequestDisabledCrossing()
    {
        if (disabledCrossingRequested) return; // Already requested
        
        disabledCrossingRequested = true;
        
        // If currently green or yellow, immediately transition to disabled crossing
        if (currentState == State.Green || currentState == State.Yellow)
        {
            currentState = State.DisabledCrossing;
            SetLights(redLights);
        }
        // If already red, the switch case will handle the transition
    }

    private void Start()
    {
        SetLights(redLights);
        StartCoroutine(TrafficLightCycle());
    }
}
