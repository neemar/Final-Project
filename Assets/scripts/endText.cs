using UnityEngine;
using System.Collections;
using UnityEngine.UI; 
public class endText : MonoBehaviour {
	public Text myButts; 
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if (ScoreManager.playerOneScore >= 3) {
			myButts.text = "PLAYER ONE WINS!"; 
		} else if (ScoreManager.playerTwoScore >= 3) {
			myButts.text = "PLAYER TWO WINS!"; 
		}
	
	}
}
