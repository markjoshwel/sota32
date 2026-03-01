using System.Collections;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

/// <summary>
/// Fades the screen to black, then loads the "Menu" scene.
/// Attach to any GameObject and call TriggerEnd() to begin the sequence.
///
/// Setup: this script creates its own fade canvas at runtime, so no
/// manual prefab wiring is needed. Simply call TriggerEnd() from a
/// UnityEvent, trigger zone, or another script.
/// </summary>
public class GoToEnd : MonoBehaviour
{
    [Header("Fade Settings")]
    [Tooltip("How long the fade-to-black takes, in seconds.")]
    [SerializeField] private float fadeDuration = 1.5f;

    [Tooltip("The colour to fade to before switching scenes.")]
    [SerializeField] private Color fadeColour = Color.black;

    // Runtime-created canvas used to render the fade overlay
    private Canvas _fadeCanvas;
    private Image _fadeImage;
    private bool _isTransitioning;

    private void Awake()
    {
        BuildFadeCanvas();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
            TriggerEnd();
    }

    /// <summary>
    /// Call this to begin the fade-and-switch sequence.
    /// Safe to call from a UnityEvent, proximity trigger, or any other script.
    /// </summary>
    public void TriggerEnd()
    {
        if (_isTransitioning) return;
        StartCoroutine(FadeAndLoad());
    }

    // -------------------------------------------------------------------------

    private IEnumerator FadeAndLoad()
    {
        _isTransitioning = true;

        // Fade from transparent to fadeColour
        yield return StartCoroutine(Fade(0f, 1f));

        // Load the menu scene
        SceneManager.LoadScene("Menu");
    }

    /// <summary>
    /// Lerps the overlay image alpha from <paramref name="from"/> to <paramref name="to"/>
    /// over <see cref="fadeDuration"/> seconds.
    /// </summary>
    private IEnumerator Fade(float from, float to)
    {
        float elapsed = 0f;
        Color c = fadeColour;

        while (elapsed < fadeDuration)
        {
            elapsed += Time.deltaTime;
            c.a = Mathf.Lerp(from, to, elapsed / fadeDuration);
            _fadeImage.color = c;
            yield return null;
        }

        c.a = to;
        _fadeImage.color = c;
    }

    /// <summary>
    /// Creates a full-screen Screen Space – Camera canvas that sits in front of
    /// everything, used as the fade overlay. Works in both flat and VR rendering.
    /// </summary>
    private void BuildFadeCanvas()
    {
        GameObject canvasGo = new GameObject("FadeCanvas_GoToEnd");
        DontDestroyOnLoad(canvasGo);

        _fadeCanvas = canvasGo.AddComponent<Canvas>();
        _fadeCanvas.renderMode = RenderMode.ScreenSpaceOverlay;
        _fadeCanvas.sortingOrder = 999;

        canvasGo.AddComponent<CanvasScaler>();
        canvasGo.AddComponent<GraphicRaycaster>();

        // Full-screen image
        GameObject imgGo = new GameObject("FadeImage");
        imgGo.transform.SetParent(canvasGo.transform, false);

        _fadeImage = imgGo.AddComponent<Image>();
        _fadeImage.raycastTarget = false;

        RectTransform rt = _fadeImage.rectTransform;
        rt.anchorMin = Vector2.zero;
        rt.anchorMax = Vector2.one;
        rt.offsetMin = Vector2.zero;
        rt.offsetMax = Vector2.zero;

        // Start fully transparent
        Color c = fadeColour;
        c.a = 0f;
        _fadeImage.color = c;
    }
}

