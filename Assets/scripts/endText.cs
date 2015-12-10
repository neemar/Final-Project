using UnityEngine;
using System.Collections;
using UnityEngine.UI; 
public class endText : MonoBehaviour {
	Text myButts; 
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if (ScoreManager.playerOneScore >= 10) {
			myButts.text = "PLAYER ONE WINS!"; 
		} else if (ScoreManager.playerTwoScore >= 10) {
			myButts.text = "PLAYER TWO WINS!"; 
		}
	
	}
}
