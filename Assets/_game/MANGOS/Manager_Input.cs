using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;


namespace Mangos
{
	public class Manager_Input : MonoBehaviour {


		void Awake()
		{
            //SE OCUOPA DECIRLEA AL MANAGER STATIC QUIEN ES SI MANAGER DE INPUTS
			Manager_Static.inputManager = this;

            
		}

		void Update()
  	{
            //CODIGO DE LOS INPUTS DEPENDIENDO DEL ESTADO DEL JUEGO

            //ENTRA EN ESTE IF SI EL ESTADO DE LA APLICACION ESTA EN GAMEPLAY
            if (Manager_Static.gameStateManager.gameState == GameState.GAMEPLAY)
            {
                if(Input.GetAxisRaw("Horizontal") != 0.0f || Input.GetAxisRaw("Vertical") != 0.0f)
                {
                    
                }
            }

            //ENTRA EN ESTE IF SI EL ESTADO DE LA APLICACION ESTA EN PAUSA
            else if (Manager_Static.gameStateManager.gameState == GameState.PAUSE)
            {
                
            }

            //ENTRA EN ESTE IF SI EL ESTADO DE LA APLICACION ESTA EN GAME END
            else if (Manager_Static.gameStateManager.gameState == GameState.GAME_END)
            {
                
            }

            //ENTRA EN ESTE IF SI EL ESTADO DE LA APLICACION ESTA EN EL MENU PRINCIPAL
            else if (Manager_Static.gameStateManager.gameState == GameState.MAIN_MENU)
			{
                
			}

	        //ENTRA EN ESTE IF SI EL ESTADO DE LA APLICACION DE LA APLIACION ESTA EN FIN DEL JUEGO
	        else if (Manager_Static.gameStateManager.gameState == GameState.GAME_END)
	        {
	        }
        }
    }
}
