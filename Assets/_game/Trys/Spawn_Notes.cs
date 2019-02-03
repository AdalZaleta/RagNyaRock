using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Spawn_Notes : MonoBehaviour {

	public Vector2 timeRangeToSpawn;
	public float cooldownToSpawnNote;
	public GameObject[] notes;
	public Transform Top_Limit;
	public Transform Bot_Limit;

	// Use this for initialization
	void Start () {
		cooldownToSpawnNote = Random.Range(timeRangeToSpawn.x, timeRangeToSpawn.y);
	}
	
	// Update is called once per frame
	void Update () {
		if(cooldownToSpawnNote < 0.0f)
		{
			Instantiate(notes[Random.Range(0, notes.Length)], 
						new Vector3(Random.Range(Top_Limit.position.x, Bot_Limit.position.x), Top_Limit.position.y, Random.Range(Top_Limit.position.z, Bot_Limit.position.z)),
						Quaternion.Euler(-90.0f, 0.0f, 0.0f));
			MakeNewCooldownNote();
		}
		cooldownToSpawnNote -= Time.deltaTime;
	}

	private void MakeNewCooldownNote()
	{
		cooldownToSpawnNote = Random.Range(timeRangeToSpawn.x, timeRangeToSpawn.y);
	}
}