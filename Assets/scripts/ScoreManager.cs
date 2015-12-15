using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class ScoreManager : MonoBehaviour {

	public static int playerOneScore = 0;
	public static int playerTwoScore = 0;
	public Image player1fill;
	public Image player2fill;


	public Text playerOneText;
	public Text playerTwoText;


	// Update is called once per frame
	void Update () {
		//displays score
		playerOneText.text = "" +playerOneScore;
		playerTwoText.text = "" +playerTwoScore;
		player1fill.fillAmount= playerOneScore/7f;
		player2fill.fillAmount= playerTwoScore/7f;


	}
}
