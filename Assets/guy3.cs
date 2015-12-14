using UnityEngine;
using System.Collections;
using UnityEngine.UI; 

public class guy3 : MonoBehaviour {

	public static guy3 instance;
	public Text chartext;
	public bool glassed = false;
	public bool picked= false;
	public bool  donezo= false;
	public bool started= false;

	string myString9 = ("Hahaha! Thank you! Have a great party!");
	
	string myString8 = ("Give it to me....");
	string myString1 = ("Now, try picking up that pair of scissors");

	string myString6 = ("Breakable stuff glows pink! Knock them over to get points.");
	string myString5 = ("Use WASD to move. Try knocking over that glass!");
	string stringAnimate = "";

	void Start () {
		instance = this; 
		glassed = false;
		picked = false;
		donezo = false;
		started= false;
		
	}
	
	// Update is called once per frame
	void Update () {
		chartext.text= (stringAnimate);
	
			if (!glassed&&!started){
				StartCoroutine(AnimateText5());
				started=true;
		}
		else if (glassed&&!picked&&started){
			StopAllCoroutines();
			started=false;
			StartCoroutine(AnimateText555555555555());
			
		}
		
		else if (picked&!started){
			StopAllCoroutines();
			StartCoroutine(AnimateText8());
			started=true;
			
		}
		
		else if (donezo&picked){
			StopAllCoroutines();
			StartCoroutine(AnimateText66());
			picked= false;
			
		}
		
	}
	IEnumerator AnimateText9(){
		for (int i = 0; i < myString9.Length; i++) {
			stringAnimate += myString9[i]; 
			yield return new WaitForSeconds(0.05f); 
		}
	}

	IEnumerator AnimateText8(){
		for (int i = 0; i < myString8.Length; i++) {
			stringAnimate += myString8[i]; 
			yield return new WaitForSeconds(0.05f); 
		}
	}
	
	IEnumerator AnimateText5(){
		for (int i = 0; i < myString5.Length; i++) {
			stringAnimate += myString5[i]; 
			yield return new WaitForSeconds(0.05f); 
		}
	}
	IEnumerator AnimateText55(){
		for (int i = 0; i < myString6.Length; i++) {
			stringAnimate += myString6[i]; 
			yield return new WaitForSeconds(0.05f); 
		}
	}
	IEnumerator AnimateText555(){
		for (int i = 0; i < myString1.Length; i++) {
			stringAnimate += myString1[i]; 
			yield return new WaitForSeconds(0.05f); 
		}
	}
	
	IEnumerator AnimateText555555555555(){
		while (true){
			stringAnimate = "";
			yield return StartCoroutine(AnimateText55());
			
			yield return new WaitForSeconds(2f); 
			
			stringAnimate = "";
			yield return StartCoroutine(AnimateText555());

			yield return new WaitForSeconds(2f); 
		
			stringAnimate = "";
			}
	}

	IEnumerator AnimateText66(){
		while (true){
			stringAnimate = "";
			yield return StartCoroutine(AnimateText9());
			
	

			yield return new WaitForSeconds(3f); 
			Application.LoadLevel("dec10ug");
			stringAnimate = "";
		}
	}


}