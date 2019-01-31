using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Mangos
{

    public struct HitData
    {
        public GameObject sender;
        public Vector3 dir;
        public float force;
        public float damage;
        public Vector3 contactPoint;
    }

    //ES EL MANAGER STATICO ES UN SCRIPT QUE SE COMUNICA CON TODOS LOS DEMAS SCRIPTS SIN IMPORTA SI ESTA EN LA ESCENA

    //ESTE ES UN ENUMERADOR QUE NOS DICE LOS ESTADOS DE LA APLICACION
    public enum AppState
    {
        PAUSE,
        GAMEPLAY,
        CREDITS,
        GAME_END,
        MAIN_MENU
    }

    public enum GameState
    {
        
    }

    //ESTE SE ENCARGARA DE MANTENER A LOS DEMAS MANAGER COMUNICADOS ENTRE ELLOS
    public static class Manager_Static
	{
        public static float GeneralVolumen = 95.0f;
		public static Manager_Input inputManager;
		public static Manager_App appManager;
		public static Manager_Scene sceneManager;
        public static Manager_Audio audioManager;
        public static Manager_GameState gameStateManager;
        public static Manager_UI uiManager;
	}
}
