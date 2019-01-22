using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Mangos
{
    public class Manager_Spawner : MonoBehaviour
    {
        public Transform[] spawnPoints = new Transform[4];
        public GroupPivotPlacer pivotPlacer;

        private CharacterSet[] characterSets;

        private void Awake()
        {
            Manager_Static.spawnManager = this;
        }

        private void Start()
        {
            characterSets = Manager_Static.playerAssigner.characterSets;
            Debug.Log("Player 1 ready is " + Manager_Static.playerAssigner.GetPlayerMap(0).ready);
            for(int i = 0; i < Manager_Static.playerAssigner.PlayerMapLength(); i++)
            {
                PlayerAssigner.PlayerMap temp = Manager_Static.playerAssigner.GetPlayerMap(i);

                if (temp.ready)
                {
                    Debug.Log("Character selected " + temp.charSelected + ", skin selected " + temp.skinSelected);
                    GameObject go = Instantiate(characterSets[temp.charSelected].skins[temp.skinSelected].model, spawnPoints[i].position, Quaternion.identity);
                    pivotPlacer.members[i] = go;
                }
            }
        }
    }
}