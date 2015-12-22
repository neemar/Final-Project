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

	string myString9 = ("Hahaha! Well done! Have a great party!");
	string myString7= ("Now press G to throw it again...");
	string myString8 = ("Throwable stuff glows BLUE ! Press G to pick it up");
	string myString1 = ("Now, try picking up that pair of scissors");

	string myString6 = ("Breakable stuff glows RED ! Knock them over to get points.");
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

			StartCoroutine(AnimateText555555555555());
			glassed= false;
		}
		
		else if (picked&&!glassed){
			StopAllCoroutines();
			StartCoroutine(AnimateText88());
			started=true;
			picked=false;

			
		}
		
		else if (donezo&&started){
			StopAllCoroutines();
			started = false;
			StartCoroutine(AnimateText66());

			
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
		for (int i = 0; i < myString1.Length; i++) {
			stringAnimate += myString1[i]; 
			yield return new WaitForSeconds(0.05f); 
		}
	}
	IEnumerator AnimateText88(){
		while (true){
			stringAnimate = "";
			yield return StartCoroutine(AnimateText8());
			
			yield return new WaitForSeconds(2f); 
			
			stringAnimate = "";
			yield return StartCoroutine(AnimateText7());
			
			yield return new WaitForSeconds(2f); 
			
			stringAnimate = "";
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
			
	

			yield return null;
			yield return null;
			yield return null;
			yield return null;
			yield return null;
			yield return null;
			
			yield return null;
			if (guy2.instance.donezo2 && guy3.instance.donezo){Application.LoadLevel("dec11");;
			stringAnimate = "";
		}
		}}}


