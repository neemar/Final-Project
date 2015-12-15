using UnityEngine;
using System.Collections;
using UnityEngine.UI; 

public class endGame : MonoBehaviour {
	public float i=0;
	public CanvasGroup ff;
	public AudioSource one;
	public AudioSource two;

	// Use this for initialization


	// Update is called once per frame
	void Update () {
		if (ScoreManager.playerOneScore >= 7 || ScoreManager.playerTwoScore >= 7){
			//load new level immediately or have some kind of transition?

			i += 1f* Time.deltaTime;

			ff.alpha = i/10f;
			
			one.volume -= 0.05f*Time.deltaTime;
			two.volume -= 0.09f*Time.deltaTime;
			if (i>10){

			Application.LoadLevel ("endGame"); 
			}}
		}
	}
	
