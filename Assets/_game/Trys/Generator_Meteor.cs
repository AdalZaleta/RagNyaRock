using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Generator_Meteor : MonoBehaviour 
{
	public GameObject[] recoilMeteor;
	public GameObject burningFloor;
	public Vector2 rangeX;
	public Vector2 rangeZ;
	public Vector3 origin;
	public Vector3 destination;
	public Vector3 directionForce;

	private void Start() 
	{
		origin = transform.position;
	}

	private void OnEnable() 
	{
		gameObject.transform.position = origin;


		destination.x = Random.Range(rangeX.x, rangeX.y);
		destination.y = 0;
		destination.z = Random.Range(rangeZ.x, rangeZ.y);

		directionForce = destination - origin;

		transform.GetComponent<Rigidbody>().AddForce(directionForce, ForceMode.Impulse);
	}

	private void OnDisable() 
	{
		origin.x = Random.Range(rangeX.x, rangeX.y);
		origin.y = 20;
		origin.z = Random.Range(rangeZ.x, rangeZ.y);

		transform.GetComponent<Rigidbody>().velocity = Vector3.zero;
	}

	private void OnCollisionEnter(Collision other) 
	{
		if(other.gameObject.CompareTag("Map") || other.gameObject.CompareTag("Player"))
		{
			Instantiate(recoilMeteor[Random.Range(0, recoilMeteor.Length)], transform.position, Quaternion.identity);
			gameObject.SetActive(false);
		}
	}
}
