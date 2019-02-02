using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Mangos
{
	public class Spawner_Meteor : MonoBehaviour {

		[SerializeField]
		private Vector2 timeToSpawn;
		[SerializeField]
		private float cooldownMeteor;
		[SerializeField]
		private GameObject meteor;

		private void Start() {
			cooldownMeteor = Random.Range(timeToSpawn.x, timeToSpawn.y);
			PoolManager.MakePool(meteor, 5, 3, true);
		}

		private void Update() {
			if(cooldownMeteor < 0.0f)
			{
				PoolManager.Spawn(meteor, meteor.transform.position, Quaternion.identity);
				MakeNewCooldown();
			}
			cooldownMeteor -= Time.deltaTime;
		}

		private void MakeNewCooldown()
		{
			cooldownMeteor = Random.Range(timeToSpawn.x, timeToSpawn.y);
		}
	}
}