﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Mangos
{

    //ES EL MANAGER STATICO ES UN SCRIPT QUE SE COMUNICA CON TODOS LOS DEMAS SCRIPTS SIN IMPORTA SI ESTA EN LA ESCENA

    //ESTE ES UN ENUMERADOR QUE NOS DICE LOS ESTADOS DE LA APLICACION
    public enum AppState
    {
        LOADING,
        RUNNING
    }

    public enum GameState
    {
        PAUSE,
        GAMEPLAY,
        CREDITS,
        GAME_END,
        MAIN_MENU
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
        public static PlayerAssigner playerAssigner;
        public static Manager_Spawner spawnManager;
    }
}
