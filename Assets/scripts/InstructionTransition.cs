﻿using UnityEngine;
using System.Collections;

public class InstructionTransition : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if ( Input.GetKeyDown (KeyCode.Space) ) {
			//then change to actual "Game" scene
			Application.LoadLevel( "PartyPooper" );
		}
	}
}
