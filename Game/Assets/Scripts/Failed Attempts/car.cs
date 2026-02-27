using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Splines;

[RequireComponent(typeof(SplineAnimate))]
[RequireComponent(typeof(Rigidbody))]
public class Car : MonoBehaviour
{
    [SerializeField] private SplineAnimate splineAnimator;

    [SerializeField] private float minSpeed = 5f;
    [SerializeField] private float maxSpeed = 9f;
    [SerializeField] private float accelerationTime = 3f;

    private float _normalSpeed;
    private TrafficLight _currentTrafficLight;

    private bool _isStopped;
    private readonly HashSet<Car> _carBlockers = new HashSet<Car>();
    private Coroutine _accelerateCoroutine;
    private Coroutine _cruiseCoroutine;

    // Immunity window after spawning — ignore car triggers so we don't
    // freeze at the spawn point when another car is nearby
    private float _immunityTimer;
    private const float ImmunityDuration = 3f;

    // Safety net: if stopped longer than this, force-resume
    // This is only meant for true intersection deadlocks where two cars from
    // crossing splines block each other — NOT for straight-road following.
    private float _stoppedTimer;
    private const float StuckTimeout = 8f;

    /// <summary>Current normalised progress (0-1) along the spline.</summary>
    public float NormalizedProgress => splineAnimator != null ? splineAnimator.NormalizedTime : 0f;

    // -------------------------------------------------------------------------

    private void Awake()
    {
        if (splineAnimator == null)
            splineAnimator = GetComponent<SplineAnimate>();

        // Prevent auto-play so we can configure the spline container and offset first
        splineAnimator.Pause();
    }

    private void Start()
    {
        // The mesh child has a baked local-position offset from its original world position
        // in the prefab. Zero it so the car doesn't visually snap on the first frame.
        transform.localPosition = Vector3.zero;
        transform.localRotation = Quaternion.identity;

        _normalSpeed = Random.Range(minSpeed, maxSpeed);

        splineAnimator.Container = CarManger.INSTANCE.roadSplineContainer;
        splineAnimator.MaxSpeed = _normalSpeed;

        // Restart so the StartOffset (possibly set by CarManager after Instantiate) is applied
        splineAnimator.Restart(true);

        var rb = GetComponent<Rigidbody>();
        if (rb != null) { rb.isKinematic = true; rb.useGravity = false; }

        _cruiseCoroutine = StartCoroutine(CruiseRoutine());
    }

    private void Update()
    {
        if (_immunityTimer < ImmunityDuration)
            _immunityTimer += Time.deltaTime;

        if (!_isStopped) return;

        _stoppedTimer += Time.deltaTime;
        if (_stoppedTimer >= StuckTimeout)
        {
            Debug.Log($"[{gameObject.name}] Stuck timeout — forcing resume (intersection deadlock).");
            _carBlockers.Clear();
            ResumeCar();
        }
    }

    // -------------------------------------------------------------------------
    // Helpers
    // -------------------------------------------------------------------------

    /// <summary>
    /// Returns true when <paramref name="otherCar"/> is ahead of us on the
    /// SAME spline, meaning we should yield. Cars on a different spline (i.e.
    /// crossing at an intersection) are always considered blockers.
    /// </summary>
    private bool IsOtherCarAhead(Car otherCar)
    {
        // Different spline container ⇒ intersection situation — always block
        if (otherCar.splineAnimator.Container != splineAnimator.Container)
            return true;

        // Same spline — only block if the other car is further along
        // (wrapping is handled: if we're at 0.95 and the other is at 0.02,
        //  the other car has wrapped past us and is ahead.)
        float myT = NormalizedProgress % 1f;
        float otherT = otherCar.NormalizedProgress % 1f;

        float diff = otherT - myT;
        // Normalise to (–0.5 , +0.5] so wrap-around is handled
        if (diff > 0.5f) diff -= 1f;
        if (diff <= -0.5f) diff += 1f;

        // Positive diff ⇒ the other car is ahead of us
        return diff > 0f;
    }

    // -------------------------------------------------------------------------
    // Trigger handling
    // -------------------------------------------------------------------------

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Car"))
        {
            if (_immunityTimer < ImmunityDuration) return;

            var otherCar = other.GetComponentInParent<Car>();
            if (otherCar == null || otherCar == this) return;
            if (otherCar._immunityTimer < ImmunityDuration) return;

            // Only stop for a car that is AHEAD of us (or on a different spline).
            // This prevents two cars on the same straight from deadlocking each other.
            if (!IsOtherCarAhead(otherCar)) return;

            if (_carBlockers.Add(otherCar) && _carBlockers.Count == 1)
                PauseCar();
        }
        else if (other.CompareTag("TrafficLight"))
        {
            _currentTrafficLight = other.transform.parent.GetComponent<TrafficLight>();
            if (_currentTrafficLight != null && _currentTrafficLight.currentState == TrafficLight.State.Red)
                PauseCar();
        }
    }

    private void OnTriggerStay(Collider other)
    {
        if (other.CompareTag("TrafficLight") && _currentTrafficLight != null
            && _currentTrafficLight.currentState == TrafficLight.State.Green)
        {
            _carBlockers.Clear();
            ResumeCar();
        }
        else if (other.CompareTag("Car") && _isStopped && _carBlockers.Count > 0)
        {
            var otherCar = other.GetComponentInParent<Car>();
            if (otherCar == null || otherCar == this) return;

            // Re-evaluate: if the other car is no longer ahead (e.g. it moved,
            // or we got force-resumed and passed it), remove it as a blocker.
            if (!IsOtherCarAhead(otherCar))
            {
                _carBlockers.Remove(otherCar);
                if (_carBlockers.Count == 0) ResumeCar();
                return;
            }

            // If the blocker is now moving, it will leave our trigger soon — let OnTriggerExit handle it.
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (!other.CompareTag("Car")) return;

        var otherCar = other.GetComponentInParent<Car>();
        if (otherCar == null || otherCar == this) return;

        _carBlockers.Remove(otherCar);
        if (_carBlockers.Count == 0 && _isStopped) ResumeCar();
    }

    // -------------------------------------------------------------------------
    // Stop / Resume
    // -------------------------------------------------------------------------

    private void PauseCar()
    {
        if (_isStopped) return;
        _isStopped = true;
        _stoppedTimer = 0f;

        StopIfRunning(ref _accelerateCoroutine);
        StopIfRunning(ref _cruiseCoroutine);

        splineAnimator.Pause();
    }

    private void ResumeCar()
    {
        if (!_isStopped) return;
        _isStopped = false;
        _stoppedTimer = 0f;

        StopIfRunning(ref _accelerateCoroutine);
        _accelerateCoroutine = StartCoroutine(AccelerateRoutine());
    }

    // -------------------------------------------------------------------------
    // Coroutines
    // -------------------------------------------------------------------------

    /// <summary>
    /// Waits a short reaction delay, then smoothly ramps MaxSpeed from 0 to _normalSpeed,
    /// then hands off to cruise variation.
    /// </summary>
    private IEnumerator AccelerateRoutine()
    {
        yield return new WaitForSeconds(Random.Range(0.2f, 1.2f));
        if (_isStopped) yield break;

        splineAnimator.MaxSpeed = 0f;
        splineAnimator.Play();

        float t = 0f;
        while (t < accelerationTime)
        {
            if (_isStopped) yield break;
            t += Time.deltaTime;
            splineAnimator.MaxSpeed = Mathf.Lerp(0f, _normalSpeed, t / accelerationTime);
            yield return null;
        }

        splineAnimator.MaxSpeed = _normalSpeed;
        _accelerateCoroutine = null;

        // Hand off to cruise variation now that we're up to speed
        StopIfRunning(ref _cruiseCoroutine);
        _cruiseCoroutine = StartCoroutine(CruiseRoutine());
    }

    /// <summary>
    /// Gently drifts MaxSpeed ±15 % of _normalSpeed (floor 80 %) every 5–12 s.
    /// Skips its blend step while stopped; the next iteration will catch up.
    /// </summary>
    private IEnumerator CruiseRoutine()
    {
        while (true)
        {
            yield return new WaitForSeconds(Random.Range(5f, 12f));
            if (_isStopped) continue;

            float variance = _normalSpeed * 0.15f;
            float target = Random.Range(
                Mathf.Max(_normalSpeed - variance, _normalSpeed * 0.80f),
                _normalSpeed + variance);

            float duration = Random.Range(3f, 6f);
            float elapsed = 0f;
            float from = splineAnimator.MaxSpeed;

            while (elapsed < duration)
            {
                if (_isStopped) break;
                elapsed += Time.deltaTime;
                splineAnimator.MaxSpeed = Mathf.Lerp(from, target, elapsed / duration);
                yield return null;
            }

            if (!_isStopped)
                splineAnimator.MaxSpeed = target;
        }
    }

    // -------------------------------------------------------------------------

    private void StopIfRunning(ref Coroutine c)
    {
        if (c == null) return;
        StopCoroutine(c);
        c = null;
    }

    private void OnCollisionEnter(Collision other)
    {
        // TODO: kill player
    }
}
