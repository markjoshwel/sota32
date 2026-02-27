// using System;
// using UnityEngine;
// using UnityEngine.Splines;
// using Random = UnityEngine.Random;
//
// public class CarManger : MonoBehaviour
// {
//     public SplineContainer roadSplineContainer;
//     [SerializeField] private GameObject[] carPrefabs;
//     [SerializeField] private int maxCars = 5;
//     [SerializeField] private int minTimeBetweenCars = 2, maxTimeBetweenCars = 10;
//     [SerializeField] private float spawnClearanceRadius = 4f; // don't spawn if a car is within this distance
//     private int _currentCars = 0, _timeBetweenCars;
//     private float _timeSinceLastCarSpawned = 0f;
//
//     private void Update()
//     {
//         if (_currentCars >= maxCars) return;
//         _timeSinceLastCarSpawned += Time.deltaTime;
//         if (_timeSinceLastCarSpawned >= _timeBetweenCars)
//         {
//             if (IsSpawnPointClear())
//             {
//                 SpawnCar();
//             }
//             else
//             {
//                 // Spawn point blocked — retry in 1 second instead of full interval
//                 _timeSinceLastCarSpawned = _timeBetweenCars - 1f;
//             }
//         }
//     }
//
//     private bool IsSpawnPointClear()
//     {
//         // Check if any collider tagged "Car" is within the clearance radius of the spawn point
//         Collider[] hits = Physics.OverlapSphere(transform.position, spawnClearanceRadius);
//         foreach (var hit in hits)
//         {
//             if (hit.CompareTag("Car"))
//                 return false;
//         }
//         return true;
//     }
//
//     private void RandomCarSpawnTime()
//     {
//         _timeSinceLastCarSpawned = 0f;
//         _timeBetweenCars = Random.Range(minTimeBetweenCars, maxTimeBetweenCars);
//     }
//
//     private void SpawnCar()
//     {
//         var carPrefab = carPrefabs[Random.Range(0, carPrefabs.Length)];
//         Instantiate(carPrefab, transform.position, transform.rotation);
//         RandomCarSpawnTime();
//         _currentCars++;
//     }
//
//     public static CarManger INSTANCE;
//
//     private void Awake()
//     {
//         if (INSTANCE == null)
//         {
//             INSTANCE = this;
//         }
//         else
//         {
//             Destroy(gameObject);
//         }
//
//         RandomCarSpawnTime();
//     }
// }
//
