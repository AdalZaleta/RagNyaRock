using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Mangos
{
	public class Manager_App : MonoBehaviour {

		public AppState currentState;
		//En algun momento me tenfgo que asegurar de que el estado cambie conforme al estado del juego

		void Awake()
		{
			Manager_Static.appManager = this;
		}

		public void SetPause()
		{
			Manager_Static.gameStateManager.gameState = GameState.PAUSE;
			Time.timeScale = 0.0f;
		}

		public void  SetPlay()
		{
			Manager_Static.gameStateManager.gameState = GameState.GAMEPLAY;
			Time.timeScale = 1.0f;
		}

        public void SetWin()
        {
            Manager_Static.gameStateManager.gameState = GameState.GAME_END;
            Time.timeScale = 1.0f;
        }

        public void SetCredits()
        {
            Manager_Static.gameStateManager.gameState = GameState.CREDITS;
            Time.timeScale = 1.0f;
        }
	}
}
