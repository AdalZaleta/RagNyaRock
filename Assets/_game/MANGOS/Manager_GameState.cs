﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace Mangos
{
    public class Manager_GameState : MonoBehaviour
    {
        public GameState gameState;

        private void Awake()
        {
            Manager_Static.gameStateManager = this;
        }

        private void Start()
        {
            DontDestroyOnLoad(gameObject);
        }

        void Update()
        {
            
        }

        public void OnWin()
        {
            
        }

        public void OnLose()
        {
            
        }
    }
}