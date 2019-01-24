using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class YutaponTester : MonoBehaviour {

    public ParticleSystem[] yutaponParticles;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKeyDown(KeyCode.Y))
        {
            for (int i = 0; i < yutaponParticles.Length; i++)
            {
                yutaponParticles[i].Clear();
                yutaponParticles[i].Play();
            }
            StartCoroutine(delayShake());
        }
	}

    IEnumerator delayShake()
    {
        yield return new WaitForSeconds(0.18f);
        GetComponent<CameraShake>().Shake();
    }
}
