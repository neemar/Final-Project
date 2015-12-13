using UnityEngine;
using System.Collections;
using UnityEngine.UI; 

public class endGame : MonoBehaviour {
	 
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if (ScoreManager.playerOneScore >= 10 || ScoreManager.playerTwoScore >= 10){
			//load new level immediately or have some kind of transition?
			Application.LoadLevel ("endGame"); 
		}
	}
}
