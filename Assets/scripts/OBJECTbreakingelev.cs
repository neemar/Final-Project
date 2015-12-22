using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class OBJECTbreakingelev : MonoBehaviour {
	

	
	bool playerOne = false;
	bool playerTwo = false;
	
	void Start(){
		

	}
	void OnCollisionEnter (Collision collide) {
		//keeps track of which player touched the object last
		if (collide.gameObject.tag == "PlayerOne") {
			playerOne = true;
			playerTwo = false;
			
			guy3.instance.glassed= true;

		}
		else if (collide.gameObject.tag == "PlayerTwo") {
			playerOne = false;
			playerTwo = true;
			
			guy2.instance.glassed2= true;

		}
	}
	
	void OnDestroy() {
		//destroy object and add score based on who touched the object last
		if (playerOne == true) {
			ScoreManager.playerOneScore++;
			playerOne = false; 
			

			//	Debug.Log (ScoreManager.playerOneScore);
		}
		else if (playerTwo == true) {
			ScoreManager.playerTwoScore++;
			playerTwo = false; 

			//	Debug.Log (ScoreManager.playerTwoScore);
		}
		//Debug.Log ("destroyed");
	}
	
	
}
