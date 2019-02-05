using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

namespace Mangos
{
	public class Handicap : MonoBehaviour {

		public GameObject[] jugadores = new GameObject[4];
		public GameObject TMP_1;
		private TextMeshProUGUI hand_1;
		public GameObject TMP_2;
		private TextMeshProUGUI hand_2;
		public GameObject TMP_3;
		private TextMeshProUGUI hand_3;
		public GameObject TMP_4;
		private TextMeshProUGUI hand_4;
		private int playersAlive;
		public Image victory;

		private void Awake() {
			Manager_Static.controlHandicap = this;
		}

		public void SetGameObject(int index, GameObject _who)
		{
			jugadores[index] = _who.gameObject;
		}

		private void Update() {
			if(jugadores[0] != null)
			{
				TMP_1.SetActive(true);
				hand_1 = TMP_1.GetComponent<TextMeshProUGUI>();
				hand_1.SetText("{0:2}", jugadores[0].GetComponent<CharacterController>().damage);
			}
			if(jugadores[1] != null)
			{
				TMP_2.SetActive(true);
				hand_2 = TMP_2.GetComponent<TextMeshProUGUI>();
				hand_2.SetText("{0:2}", jugadores[1].GetComponent<CharacterController>().damage);
			}
			if(jugadores[2] != null)
			{
				TMP_3.SetActive(true);
				hand_3 = TMP_3.GetComponent<TextMeshProUGUI>();
				hand_3.SetText("{0:2}", jugadores[2].GetComponent<CharacterController>().damage);
			}
			if(jugadores[3] != null)
			{
				TMP_4.SetActive(true);
				hand_4 = TMP_4.GetComponent<TextMeshProUGUI>();
				hand_4.SetText("{0:2}", jugadores[3].GetComponent<CharacterController>().damage);
			}

			for(int i = 0; i < 4; i++)
			{
				if(jugadores[i] != null)
					if(jugadores[i].gameObject.activeSelf)
						playersAlive++;
			}

			if(playersAlive <= 1)
			{
				Debug.Log("VICTORY ROYAL");
				victory.gameObject.SetActive(true);
				StartCoroutine("RegresarCharacter");
			}

			Debug.Log("Jugadores Activos: " + playersAlive);
			playersAlive = 0;
		}

		IEnumerator RegresarCharacter()
		{
			yield return new WaitForSeconds(5.0f);
			Manager_Static.sceneManager.LoadScene(0);
		}
	}
}
