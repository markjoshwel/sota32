using System;
using UnityEngine;
using UnityEngine.Splines;
using Random = System.Random;

public class CarManger : MonoBehaviour
{
    public SplineContainer roadSplineContainer;
    [SerializeField] private GameObject[] carPrefabs;
    [SerializeField] private int maxCars = 5;
    [SerializeField] private int minTimeBetweenCars = 2, maxTimeBetweenCars = 10;
    private int _currentCars = 0, _timeBetweenCars;
    private float _timeSinceLastCarSpawned = 0f;

    private void Update()
    {
        if (_currentCars >= maxCars) return;
        _timeSinceLastCarSpawned += Time.deltaTime;
        if (_timeSinceLastCarSpawned >= _timeBetweenCars)
        {
            SpawnCar();
        }
    }

    private void RandomCarSpawnTime()
    {
        _timeSinceLastCarSpawned = 0f;
        _timeBetweenCars = UnityEngine.Random.Range(minTimeBetweenCars, maxTimeBetweenCars);
    }

    private bool IsCarAtSpawnPoint()
    {
        Collider[] hits = Physics.OverlapSphere(transform.position, 6f);
        foreach (var hit in hits)
        {
            if (hit.CompareTag("Car"))
                return true;
        }
        return false;
    }

    private void SpawnCar()
    {
        if (IsCarAtSpawnPoint())
        {
            RandomCarSpawnTime();
            return;
        }

        var carPrefab = carPrefabs[UnityEngine.Random.Range(0, carPrefabs.Length)];
        Instantiate(carPrefab, transform.position, transform.rotation);
        RandomCarSpawnTime();
        _currentCars++;
    }

    public void DecrementCarCount()
    {
        _currentCars = Mathf.Max(0, _currentCars - 1);
    }

    public static CarManger INSTANCE;

    private void Awake()
    {
        if (INSTANCE == null)
        {
            INSTANCE = this;
        }
        else
        {
            Destroy(gameObject);
        }

        RandomCarSpawnTime();
    }
}