using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Turret : MonoBehaviour {
    public GameObject bullet;
    public GameObject spawner;
    public int spawnRate;

    private int frequency = 1000;

	void Start () {
        InvokeRepeating("InstantiateBullets", spawnRate, frequency);
	}
	
	void Update () {
		
	}

    public void InstantiateBullets()
    {
        Instantiate(bullet, spawner.transform.position, spawner.transform.rotation);
    }
}
