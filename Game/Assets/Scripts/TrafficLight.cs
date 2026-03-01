using System.Collections;
using PokkatCore;
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
    
    [SerializeField] private float startOffset = 0f; 
    [SerializeField] private GameObject vehicleStopTriggerBox;
    
    public State currentState = State.Red;
    private bool disabledCrossingRequested = false;
    private Coroutine trafficLightCoroutine;

    private IEnumerator TrafficLightCycle()
    {
        // Apply the starting offset before the cycle begins
        if (startOffset > 0f)
        {
            Logkat.Dev($"Traffic light waiting for start offset of {startOffset}s.");
            yield return new WaitForSeconds(startOffset);
        }

        while (true)
        {
            switch (currentState)
            {
                case State.Yellow:
                    Logkat.Dev($"Traffic light is YELLOW, and will wait {yellowDuration}s before switching to RED.");
                    yield return new WaitForSeconds(yellowDuration);
                    currentState = State.Red;
                    SetLights(redLights);
                    break;
                case State.Green:
                    Logkat.Dev(
                        $"Traffic light is GREEN, and will wait {greenDuration}s +/- {greenRedVariance}s before switching to YELLOW.");
                    yield return new WaitForSeconds(Random.Range(greenDuration - greenRedVariance,
                        greenDuration + greenRedVariance));
                    currentState = State.Yellow;
                    SetLights(yellowLights);
                    break;
                case State.Red:
                    if (disabledCrossingRequested)
                    {
                        Logkat.Dev("Traffic light is RED with CROSSING REQUESTED. Switching.");
                    }
                    else
                    {
                        Logkat.Dev(
                            $"Traffic light is RED, and will wait {redDuration}s +/- {greenRedVariance}s before switching to GREEN.");
                    }

                    // Check if disabled crossing was requested during red state
                    if (disabledCrossingRequested)
                    {
                        currentState = State.DisabledCrossing;
                        SetLights(redLights); // Keep red lights on
                    }
                    else
                    {
                        yield return new WaitForSeconds(Random.Range(redDuration - greenRedVariance,
                            redDuration + greenRedVariance));
                        currentState = State.Green;
                        SetLights(greenLights);
                    }

                    break;
                case State.DisabledCrossing:
                    Logkat.Dev(
                        $"Traffic light is DISABLED FOR CROSSING, and will wait for {disabledCrossingDuration}s before switching back to GREEN.");
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
        Logkat.Dev("Traffic light started...");
        SetLights(redLights);
        StartCoroutine(TrafficLightCycle());
    }
}
