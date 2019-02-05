using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Mangos
{
    public class Manager_Spawner : MonoBehaviour
    {
        public Transform[] spawnPoints = new Transform[4];
        public GroupPivotPlacer pivotPlacer;
        public GameObject charPrefab;

        private CharacterSet[] characterSets;

        private void Awake()
        {
            Manager_Static.spawnManager = this;
        }

        public void ReSpawn(GameObject _who)
        {
            Debug.Log(_who.name + " es quien se salio de la zona");
            _who.transform.position = spawnPoints[Random.Range(0, 4)].transform.position;
            _who.GetComponent<Rigidbody>().velocity = Vector3.zero;
        }

        private void Start()
        {
            characterSets = Manager_Static.playerAssigner.characterSets;
            Debug.Log("Player 1 ready is " + Manager_Static.playerAssigner.GetPlayerMap(0).ready);
            for (int i = 0; i < Manager_Static.playerAssigner.PlayerMapLength(); i++)
            {
                PlayerAssigner.PlayerMap temp = Manager_Static.playerAssigner.GetPlayerMap(i);

                if (temp.ready)
                {
                    Debug.Log("Character selected " + temp.charSelected + ", skin selected " + temp.skinSelected);
                    GameObject go = Instantiate(charPrefab, spawnPoints[i].position, Quaternion.identity);

                    CharacterController goController = go.GetComponent<CharacterController>();

                    goController.AssignID(temp.rewiredPlayerId);
                    goController.model = characterSets[temp.charSelected].skins[temp.skinSelected].model;

                    if (characterSets[temp.charSelected].ult_controller)
                        goController.ultController = characterSets[temp.charSelected].ult_controller;
                    if(pivotPlacer)
                        pivotPlacer.members[i] = go;
                }
            }
        }
    }
}