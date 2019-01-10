using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace Mangos
{
	public class Manager_UI : MonoBehaviour {

        [Header("Character Selection Screen UI")]
        public CharacterSet[] characterSets;
        public GameObject allReadyNotice;

		void Awake()
		{
			Manager_Static.uiManager = this;
		}

        public void OnCharacterSelectStart()
        {
            allReadyNotice.SetActive(false);
        }

        public void SetAllReadyNotice(bool on)
        {
            allReadyNotice.SetActive(on);
            Manager_Static.playerAssigner.gameReadyToStart = true;
        }
	}
}
