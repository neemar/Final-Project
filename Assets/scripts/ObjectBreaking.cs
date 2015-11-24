﻿using UnityEngine;
using System.Collections;

public class ObjectBreaking : MonoBehaviour {

	bool playerOne = false;
	bool playerTwo = false;

	void OnCollisionEnter (Collision collide) {
		//keeps track of which player touched the object last
		if (collide.gameObject.tag == "PlayerOne") {
			playerOne = true;
			playerTwo = false;
		}
		else if (collide.gameObject.tag == "PlayerTwo") {
			playerOne = false;
			playerTwo = true;
		}
	}

	void OnDestroy() {
		//destroy object and add score based on who touched the object last
		if (playerOne == true) {
			ScoreManager.playerOneScore++;
		//	Debug.Log (ScoreManager.playerOneScore);
		}
		else if (playerTwo == true) {
			ScoreManager.playerTwoScore++;
		//	Debug.Log (ScoreManager.playerTwoScore);
		}
		//Debug.Log ("destroyed");
	}
}