using System;
using UnityEngine;
using UnityEngine.Splines;

[RequireComponent(typeof(SplineAnimate))]
[RequireComponent(typeof(Rigidbody))]
public class Car : MonoBehaviour
{
    [SerializeField] private SplineAnimate splineAnimator;
    private Rigidbody rb;
    private TrafficLight currentTrafficLight;

    private void Start()
    {
        if (splineAnimator == null)
        {
            splineAnimator = GetComponent<SplineAnimate>();
        }

        splineAnimator.Container = CarManger.INSTANCE.roadSplineContainer;
        splineAnimator.Play();
        // Ensure Rigidbody is set up correctly for triggers
        rb = GetComponent<Rigidbody>();
        if (rb != null)
        {
            rb.isKinematic = true; // Kinematic since we're moving via spline
            rb.useGravity = false;
        }

        Debug.Log($"Car {gameObject.name} initialized. Has Rigidbody: {rb != null}");
    }

    private void OnTriggerEnter(Collider other)
    {
        // Debug.Log($"[{gameObject.name}] OnTriggerEnter detected: {other.gameObject.name}, Tag: {other.tag}, IsTrigger: {other.isTrigger}");

        if (other.CompareTag("Car"))
        {
            // Debug.Log($"[{gameObject.name}] Pausing due to car ahead: {other.gameObject.name}");
            splineAnimator.Pause();
        }

        if (other.CompareTag("TrafficLight"))
        {
            Debug.Log("[{gameObject.name}] Pausing due to traffic light: " + other.gameObject.name);
            currentTrafficLight = other.transform.parent.GetComponent<TrafficLight>();
            if (currentTrafficLight.currentState == TrafficLight.State.Red)
            {
                splineAnimator.Pause();
            }
        }
    }

    private void OnTriggerStay(Collider other)
    {
        if (other.CompareTag("TrafficLight"))
        {
            print(currentTrafficLight.currentState);
            if (currentTrafficLight.currentState == TrafficLight.State.Green)
            {
                Invoke("StopToDrive", 0.5f); // Resume after 1 second
            }
        }
    }

    private void StopToDrive()
    {
        splineAnimator.Play();
    }

    private void OnTriggerExit(Collider other)
    {
        Debug.Log($"[{gameObject.name}] OnTriggerExit detected: {other.gameObject.name}, Tag: {other.tag}");

        if (other.CompareTag("Car"))
        {
            Debug.Log($"[{gameObject.name}] Resuming after car cleared: {other.gameObject.name}");
            Invoke("StopToDrive", 2f); // Resume after 1 second
        }
    }

    private void OnCollisionEnter(Collision other)
    {
        //TODO: kill player 
    }
}