using PokkatCore;
using UnityEngine;
using UnityEngine.SceneManagement;
public class StartGame:MonoBehaviour
{
    public void PlayGame()
    {
        Logkat.Dev("StartGame: loading scene");
        SceneManager.LoadSceneAsync(1);
    }
    public void QuitGame()
    {
        Logkat.Dev("QuitGame: quitting game");
        Application.Quit();
    }
}
