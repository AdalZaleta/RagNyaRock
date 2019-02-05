using System.Collections;
using System.Collections.Generic;
using UnityEngine;


namespace Mangos {
    public class singlePlayerAssigner : MonoBehaviour {

        public PlayerAssigner assigner;

        // Use this for initialization
        void Start() {
            assigner.AssignNextPlayer(0);
        }

        // Update is called once per frame
        void Update() {

        }
    }
}