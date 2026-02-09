using System;
using UnityEngine;
using UnityEngine.Splines;

public class CarManger : MonoBehaviour
{
    public SplineContainer roadSplineContainer;
    [SerializeField] private GameObject carPrefab;
    [SerializeField] private int maxCars = 5;
    [SerializeField] private int timeBetweenCars = 2;
    private int _currentCars = 0;
    private float _timeSinceLastCarSpawned = 0f;
    private void Update()
    {
        if (_currentCars>= maxCars) return;
        _timeSinceLastCarSpawned+=Time.deltaTime;
        if (_timeSinceLastCarSpawned>=timeBetweenCars)
        {
            SpawnCar();
            _timeSinceLastCarSpawned = 0f;
        }
    }


    private void SpawnCar()
    {
        Instantiate(carPrefab, transform.position, transform.rotation);
        _currentCars++;
    }
    
    public static CarManger Instance;
    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
        }
        else
        {
            Destroy(gameObject);
        }
    }
}
