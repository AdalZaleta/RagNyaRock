using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Mangos
{
	public class Spawner_Meteor : MonoBehaviour {

		[SerializeField]
		private Vector2 timeToSpawnMeteor;
		[SerializeField]
		private float cooldownMeteor;
		[SerializeField]
		private GameObject meteor;
		[Space(10)]
		[SerializeField]
		private Vector2 timeToSpawnBlackHole;
		[SerializeField]
		private float cooldownBlackHole;
		[SerializeField]
		private GameObject blackHole;

		private void Start() {
			cooldownMeteor = Random.Range(timeToSpawnMeteor.x, timeToSpawnMeteor.y);
			cooldownBlackHole = Random.Range(timeToSpawnBlackHole.x, timeToSpawnBlackHole.y);
			PoolManager.MakePool(meteor, 5, 3, true);
		}

		private void Update() {
			if(cooldownMeteor < 0.0f)
			{
				PoolManager.Spawn(meteor, meteor.transform.position, Quaternion.identity);
				MakeNewCooldownMeteor();
			}
			if(cooldownBlackHole < 0.0f)
			{
				blackHole.GetComponent<Animator>().SetTrigger("MakeAnimation");
				MakeNewCooldownBlackHole();
			}
			cooldownMeteor -= Time.deltaTime;
			cooldownBlackHole -= Time.deltaTime;
		}

		private void MakeNewCooldownBlackHole()
		{
			cooldownBlackHole = Random.Range(timeToSpawnBlackHole.x, timeToSpawnBlackHole.y);
		}

		private void MakeNewCooldownMeteor()
		{
			cooldownMeteor = Random.Range(timeToSpawnMeteor.x, timeToSpawnMeteor.y);
		}
	}
}