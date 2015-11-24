using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class ScoreManager : MonoBehaviour {

	public static int playerOneScore = 0;
	public static int playerTwoScore = 0;
	
	public Text playerOneText;
	public Text playerTwoText;


	// Update is called once per frame
	void Update () {
		//displays score
		playerOneText.text = "Score: " + playerOneScore;
		playerTwoText.text = "Score: " + playerTwoScore;
	}
}
