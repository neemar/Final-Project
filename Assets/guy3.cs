using UnityEngine;
using System.Collections;
using UnityEngine.UI; 
public class guy3 : MonoBehaviour {
	public static guy3 instance;
	public Text chartext;
	public bool glassed = false;
	public bool picked= false;
	public bool  donezo= false;
	
	string myString9 = ("Hahaha! Thank you! Have a great party!");
	
	string myString8 = ("Give it to me....");
	
	string myString7 = ("Have fun!");
	string myString6 = ("Breakable stuff glows pink! Knock them over to get points.");
	string myString5 = ("Use WASD to move. Try knocking over that glass!");
	string stringAnimate = "";
	// Use this for initialization
	void Start () {
		instance = this; 
		glassed = false;
		picked = false;
		donezo = false;
		
	}
	
	// Update is called once per frame
	void Update () {
		chartext.text= (stringAnimate);
		if (!glassed){
			StartCoroutine(AnimateText5());
			
		}
		else if (glassed&&!picked){
			StopAllCoroutines();
			StartCoroutine(AnimateText555555555555());
			
		}
		
		else if (picked){
			StopAllCoroutines();
			StartCoroutine(AnimateText8());
			
		}
		
		else if (donezo){
			
			Application.LoadLevel("dec10ug");
			
		}
		
	}
	IEnumerator AnimateText9(){
		for (int i = 0; i < myString9.Length; i++) {
			stringAnimate += myString9[i]; 
			yield return new WaitForSeconds(0.05f); 
		}
	}
	IEnumerator AnimateText7(){
		for (int i = 0; i < myString7.Length; i++) {
			stringAnimate += myString7[i]; 
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
		for (int i = 0; i < myString7.Length; i++) {
			stringAnimate += myString7[i]; 
			yield return new WaitForSeconds(0.05f); 
		}
	}
	
	IEnumerator AnimateText555555555555(){
		while (true){
			stringAnimate = "";
			yield return StartCoroutine(AnimateText55());
			
			yield return new WaitForSeconds(1f); 
			
			stringAnimate = "";
			yield return StartCoroutine(AnimateText555());
			stringAnimate = "";
			yield return new WaitForSeconds(1f); 
			yield return StartCoroutine(AnimateText7());
			yield return new WaitForSeconds(2f); 
			stringAnimate = "";
			Application.LoadLevel("dec10ug");
		}
	}
}