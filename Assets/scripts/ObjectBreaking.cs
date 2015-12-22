using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class ObjectBreaking : MonoBehaviour {
	bool playerOne = false;
	bool playerTwo = false;
	public static bool girlGo = false;
	public static bool boyGo = false; 
	
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
		if (playerOne == true && transform.tag != "Flying") {
			ScoreManager.playerOneScore++;
			playerOne = false; 
			girlGo = true;
			//GetComponent<AudioSource>().Play ();
			//	Debug.Log (ScoreManager.playerOneScore);
		}
		else if (playerTwo == true && transform.tag != "Flying") {
			ScoreManager.playerTwoScore++;
			playerTwo = false; 
			boyGo = true; 
			//GetComponent<AudioSource>().Play ();
			//	Debug.Log (ScoreManager.playerTwoScore);
		}
		//Debug.Log ("destroyed");
	}
	
	
}

