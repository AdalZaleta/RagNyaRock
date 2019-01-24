using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraShake : MonoBehaviour {

    // How long the object should shake for.
    public float shakeDuration = 0f;
    float currentDuration;

    // Amplitude of the shake. A larger value shakes the camera harder.
    public float shakeAmount;
    public float decreaseFactor = 1.0f;

    public bool shake;

    Vector3 originalPos;

    private void OnEnable()
    {
        originalPos = transform.position;
    }

    // Update is called once per frame
    void Update () {
		if (shake)
        {
            if (currentDuration > 0)
            {
                transform.localPosition = originalPos + Random.insideUnitSphere * shakeAmount;
                currentDuration -= Time.deltaTime * decreaseFactor;
            }
            else
            {
                currentDuration = 0.0f;
                transform.localPosition = originalPos;
                shake = false;
            }
        }
	}

    public void Shake()
    {
        currentDuration = shakeDuration;
        shake = true;
    }
}
