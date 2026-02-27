using System;
using UnityEngine;
using UnityEngine.Splines;

[RequireComponent(typeof(SplineAnimate))]
[RequireComponent(typeof(Rigidbody))]
public class Car : MonoBehaviour
{
    [SerializeField] private SplineAnimate splineAnimator;
    [SerializeField] private float detectionDistance = 1.5f; // how far ahead to check
    // SplineAnimate Forward Axis is "Object X-", so the car travels along -transform.right
    private Vector3 MoveDirection => -transform.right;
    private Rigidbody rb;
    private TrafficLight currentTrafficLight;
    private bool _blockedByCar = false;
    private bool _blockedByLight = false;
    private Collider _myCollider;

    private void Start()
    {
        if (splineAnimator == null)
        {
            splineAnimator = GetComponent<SplineAnimate>();
        }

        splineAnimator.Container = CarManger.INSTANCE.roadSplineContainer;
        splineAnimator.Completed += OnSplineCompleted;
        splineAnimator.Play();
        _myCollider = GetComponent<Collider>();
        // Ensure Rigidbody is set up correctly for triggers
        rb = GetComponent<Rigidbody>();
        if (rb != null)
        {
            rb.isKinematic = true; // Kinematic since we're moving via spline
            rb.useGravity = false;
        }

        Debug.Log($"Car {gameObject.name} initialized. Has Rigidbody: {rb != null}");
    }

    private void OnSplineCompleted()
    {
        CarManger.INSTANCE.DecrementCarCount();
        Destroy(gameObject);
    }

    private void Update()
    {
        if (_blockedByLight) return;

        bool carAhead = IsCarAhead();

        if (carAhead && !_blockedByCar)
        {
            _blockedByCar = true;
            splineAnimator.Pause();
        }
        else if (!carAhead && _blockedByCar)
        {
            _blockedByCar = false;
            splineAnimator.Play();
        }
    }

    private bool IsCarAhead()
    {
        if (_myCollider == null) return false;

        Bounds b = _myCollider.bounds;
        Vector3 dir = MoveDirection; // -transform.right is the actual travel direction

        // half extents: narrow on sides, short probe depth ahead
        Vector3 halfExtents = new Vector3(detectionDistance * 0.5f, b.extents.y * 0.6f, b.extents.z * 0.6f);
        // center: start from collider center, push one full extents + half probe ahead
        Vector3 center = b.center + dir * (b.extents.x + detectionDistance * 0.5f);

        Collider[] hits = Physics.OverlapBox(center, halfExtents, transform.rotation);
        foreach (var hit in hits)
        {
            if (hit.gameObject != gameObject && !hit.isTrigger && hit.CompareTag("Car"))
                return true;
        }
        return false;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("TrafficLight"))
        {
            currentTrafficLight = other.transform.parent.GetComponent<TrafficLight>();
            if (currentTrafficLight != null && currentTrafficLight.currentState == TrafficLight.State.Red)
            {
                _blockedByLight = true;
                splineAnimator.Pause();
            }
        }
    }

    private void OnTriggerStay(Collider other)
    {
        if (other.CompareTag("TrafficLight") && _blockedByLight)
        {
            if (currentTrafficLight != null && currentTrafficLight.currentState == TrafficLight.State.Green)
            {
                _blockedByLight = false;
                Invoke("ResumeDriving", 0.5f);
            }
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("TrafficLight"))
        {
            _blockedByLight = false;
        }
    }

    private void ResumeDriving()
    {
        if (!_blockedByCar && !_blockedByLight)
            splineAnimator.Play();
    }


    private void OnCollisionEnter(Collision other)
    {
        //TODO: kill player 
    }
}