using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Rewired;

[RequireComponent(typeof(CharacterController))]
public class MyCharater : MonoBehaviour 
{
	public int PlayerId = 0; //The Rewired player id of this character

	public float moveSpeed = 3.0f;
	public float jumpDistance = 3.0f;

	private Player player; //The Rewired Player
	private CharacterController cc;
	private Vector3 moveVector;
	private bool jump;

	private void Awake() {
		//Get the Rewired Player object for this player and keep it for the duration of the characte's lifetime
		player = ReInput.players.GetPlayer(PlayerId);
		
		//Get the character controller
		cc = GetComponent<CharacterController>();
	}

	private void Update() {
		GetInput();
		ProcessInput();
	}

	private void GetInput() {
		//Get the input from the Rewired Player. All controllers that the Players owns will contribute, so it doesn't matter
		//Whether the input is coming from a joustick, the keyboard, mouse, or a custom controller

		moveVector.x = player.GetAxis("Move_Horizontal"); //get input by name or action id
		moveVector.z = player.GetAxis("Move_Vertical");
		jump = player.GetButtonDown("Jump");
	}

	private void ProcessInput() {
		// Process movement
		if(moveVector.x != 0.0f || moveVector.z != 0.0f){
			cc.Move(moveVector * moveSpeed * Time.deltaTime);
		}

		//Process Jump
		if(jump) {
			Debug.Log("Estas intentando salta");
		}
	}
}
