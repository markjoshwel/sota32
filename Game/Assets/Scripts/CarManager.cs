using System;
using UnityEngine;
using UnityEngine.Splines;

public class CarManger : MonoBehaviour
{
    public SplineContainer roadSplineContainer;
    [SerializeField] private GameObject carPrefab;
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

    private void SpawnCar()
    {
        Instantiate(carPrefab, transform.position, transform.rotation);
        RandomCarSpawnTime();
        _currentCars++;
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