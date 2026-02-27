using UnityEngine;
using UnityEngine.SceneManagement;

public class EndGame : MonoBehaviour
{
    
    [SerializeField] private Transform triggerCube; 
    [SerializeField] private float detectionRadius = 2f;
    
    void Update()
    {
        // Check distance to cube every frame
        float distance = Vector3.Distance(transform.position, triggerCube.position);
        
        if (distance < detectionRadius)
        {
            Debug.Log("Entered menu zone!");
            SceneManager.LoadScene(0);
        }
    }
}
