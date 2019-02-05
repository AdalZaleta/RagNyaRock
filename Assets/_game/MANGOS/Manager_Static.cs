using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Mangos
{

    public struct HitData
    {
        public GameObject sender;    //El objeto que lo mandó
        public Vector3 dir;          //La dirección del mundo a la que tiene que salir
        public float baseForce;          //La fuerza base con la que debe de ser lanzado
        public float scalingForce;       //Que tanto aumenta la fuerza dependiedo de el procentaje que tenga el gato golpeado
        public float damage;             //El daño que hace el golpe / el porcentaje que aumenta
        public Vector3 contactPoint;     //El punto en donde golpeó, sirve para añadir torque natural

    }

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
    
    public enum Nota
	{
		CORCHEA,
		CUADRUPLE_CORCHEA,
		DOBLE_CORCHEA,
		NEGRA,
		SEMI_CORCHEA,
		SILENCIO,
		TRES_CUARTOS
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
        public static Handicap controlHandicap;
        public static PlayerAssigner asiger;
    }
}
