using UnityEngine;
using System.Collections;
using UnityEngine.UI; 

public class scrollText : MonoBehaviour {
	string myString = ("I will never love again.");
	string stringAnimate = ""; 
	public Text myText; 

	IEnumerator AnimateText(){
		for (int i = 0; i < myString.Length; i++) {
			stringAnimate += myString[i]; 
			yield return new WaitForSeconds(0.09f); 
		}

	}

	
	// Update is called once per frame
	void Update () {
		myText.text= (stringAnimate);
		if (Input.GetKeyDown (KeyCode.Space) ) {
				StartCoroutine( AnimateText());
			}
	
		}
	
	

}
