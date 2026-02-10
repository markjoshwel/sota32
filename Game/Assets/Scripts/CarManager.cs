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

    private void SpawnCar()
    {
        var carPrefab= carPrefabs[UnityEngine.Random.Range(0, carPrefabs.Length)];
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