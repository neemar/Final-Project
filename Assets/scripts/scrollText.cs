using UnityEngine;
using System.Collections;
using UnityEngine.UI; 

public class scrollText : MonoBehaviour {
	string myString = ("I will never love again !");
	string myString2 = ("The dead skyscrapers represent my heart");

	string stringAnimate = ""; 
	public Text myText; 
	
	IEnumerator AnimateText(){
		for (int i = 0; i < myString.Length; i++) {
			stringAnimate += myString[i]; 
			yield return new WaitForSeconds(0.07f); 
		}
		
	}

	IEnumerator AnimateText2(){
		for (int i = 0; i < myString2.Length; i++) {
			stringAnimate += myString2[i]; 
			yield return new WaitForSeconds(0.07f); 
		}
	}

IEnumerator AnimateText3(){
		while (true){
		yield return StartCoroutine(AnimateText());

		yield return new WaitForSeconds(2f); 

		stringAnimate = "";
		yield return StartCoroutine(AnimateText2());

		yield return new WaitForSeconds(2f); 
		stringAnimate = "";
		}}
	
	
	// Update is called once per frame
	void Update () {
		myText.text= (stringAnimate);
		if (Input.GetKeyDown (KeyCode.Space) ) {
			StartCoroutine( AnimateText3());

		}
		
	}
	
	
	
}