using System.Collections;
using UnityEngine;

public class TrafficLight : MonoBehaviour
{
    public enum State
    {
        Red,
        Green,
        Yellow
    }
    [SerializeField] private Transform lightsObject;
    [SerializeField] private GameObject[] greenLights, yellowLights, redLights;
    [SerializeField] private float greenDuration = 5f, yellowDuration = 2f, redDuration = 5f;
    [SerializeField] private GameObject vehicleStopTriggerBox;
    public State currentState = State.Red;
    
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
                    yield return new WaitForSeconds(greenDuration);
                    currentState = State.Yellow;
                    SetLights(yellowLights);
                    break;
                case State.Red:
                    yield return new WaitForSeconds(redDuration);
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
    private void Start()
    {
        SetLights(redLights);
        StartCoroutine(TrafficLightCycle());
    }
}
