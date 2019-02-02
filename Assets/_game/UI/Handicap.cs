using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

namespace Mangos
{
	public class Handicap : MonoBehaviour {

		public GameObject jugador_1;
		public GameObject TMP_1;
		private TextMeshProUGUI hand_1;
		public GameObject jugador_2;
		public GameObject TMP_2;
		private TextMeshProUGUI hand_2;
		public GameObject jugador_3;
		public GameObject TMP_3;
		private TextMeshProUGUI hand_3;
		public GameObject jugador_4;
		public GameObject TMP_4;
		private TextMeshProUGUI hand_4;

		// Use this for initialization
		void Start () {
			if(jugador_1 == null)
			{
				TMP_1.gameObject.SetActive(false);
			}
			if(jugador_1 != null)
			{
				hand_1 = TMP_1.GetComponent<TextMeshProUGUI>();
			}
			if(jugador_2 == null)
			{
				TMP_2.gameObject.SetActive(false);
			}
			if(jugador_2 != null)
			{
				hand_2 = TMP_2.GetComponent<TextMeshProUGUI>();
			}
			if(jugador_3 == null)
			{
				TMP_3.gameObject.SetActive(false);
			}
			if(jugador_3 != null)
			{
				hand_3 = TMP_3.GetComponent<TextMeshProUGUI>();
			}
			if(hand_4 == null)
			{
				TMP_4.gameObject.SetActive(false);
			}
			if(jugador_4 != null)
			{
				hand_4 = TMP_4.GetComponent<TextMeshProUGUI>();
			}
		}

		private void Update() {
			if(jugador_1 != null)
			{
				hand_1.SetText("{0:2}", jugador_1.GetComponent<CharacterController>().damage);
			}
			if(jugador_2 != null)
			{
				hand_2.SetText("{0:2}", jugador_2.GetComponent<CharacterController>().damage);
			}
			if(jugador_3 != null)
			{
				hand_3.SetText("{0:2}", jugador_3.GetComponent<CharacterController>().damage);
			}
			if(jugador_4 != null)
			{
				hand_4.SetText("{0:2}", jugador_4.GetComponent<CharacterController>().damage);
			}
		}
	}
}
