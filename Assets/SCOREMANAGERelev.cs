using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class SCOREMANAGERelev : MonoBehaviour {
	
	public float playerOneScore = 0;

	public Image player1fill;
	
	
	public Text playerOneText;
	
	
	// Update is called once per frame
	void Update () {
		//displays score
		playerOneText.text = "" +playerOneScore;

		if (guy3.instance.donezo){
			playerOneScore= playerOneScore+1 * Time.deltaTime;
		
		player1fill.fillAmount= playerOneScore/7f;
	
		
		}}
}
