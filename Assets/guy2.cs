using UnityEngine;
using System.Collections;
using UnityEngine.UI; 

public class guy2 : MonoBehaviour {
	
	public static guy2 instance;
	public Text chartext2;
	public bool glassed2 = false;
	public bool picked2= false;
	public bool  donezo2= false;
	public bool started2= false;
	
	string myString92 = ("Hahaha! Well done! Have a great party!");
	string myString72= ("Now press K to throw it again...");
	string myString82 = ("Throwable stuff glows BLUE ! Press K to pick it up");
	string myString12 = ("Now, try picking up that pair of scissors");
	
	string myString62 = ("Breakable stuff glows RED ! Knock them over to get points.");
	string myString52 = ("Use WASD to move. Try knocking over that glass!");
	string stringAnimate2 = "";
	
	void Start () {
		instance = this; 
		glassed2 = false;
		picked2 = false;
		donezo2 = false;
		started2= false;
		
	}
	
	// Update is called once per frame
	void Update () {
		chartext2.text= (stringAnimate2);
		
		if (!glassed2&&!started2){
			StartCoroutine(AnimateText5());
			started2=true;
		}
		else if (glassed2&&!picked2&&started2){
			StopAllCoroutines();
			
			StartCoroutine(AnimateText555555555555());
			glassed2= false;
		}
		
		else if (picked2&&!glassed2){
			StopAllCoroutines();
			StartCoroutine(AnimateText88());
			started2=true;
			picked2=false;
			
			
		}
		
		else if (donezo2&&started2){
			StopAllCoroutines();
			started2= false;
			StartCoroutine(AnimateText66());
			
			
		}
		
	}
	IEnumerator AnimateText9(){
		for (int i = 0; i < myString92.Length; i++) {
			stringAnimate2 += myString92[i]; 
			yield return new WaitForSeconds(0.05f); 
		}
	}
	IEnumerator AnimateText7(){
		for (int i = 0; i < myString72.Length; i++) {
			stringAnimate2 += myString72[i]; 
			yield return new WaitForSeconds(0.05f); 
		}
	}
	
	IEnumerator AnimateText8(){
		for (int i = 0; i < myString82.Length; i++) {
			stringAnimate2 += myString82[i]; 
			yield return new WaitForSeconds(0.05f); 
		}
	}
	
	IEnumerator AnimateText5(){
		for (int i = 0; i < myString52.Length; i++) {
			stringAnimate2 += myString52[i]; 
			yield return new WaitForSeconds(0.05f); 
		}
	}
	IEnumerator AnimateText55(){
		for (int i = 0; i < myString62.Length; i++) {
			stringAnimate2 += myString62[i]; 
			yield return new WaitForSeconds(0.05f); 
		}
	}
	IEnumerator AnimateText555(){
		for (int i = 0; i < myString12.Length; i++) {
			stringAnimate2 += myString12[i]; 
			yield return new WaitForSeconds(0.05f); 
		}
	}
	IEnumerator AnimateText88(){
		while (true){
			stringAnimate2 = "";
			yield return StartCoroutine(AnimateText8());
			
			yield return new WaitForSeconds(2f); 
			
			stringAnimate2 = "";
			yield return StartCoroutine(AnimateText7());
			
			yield return new WaitForSeconds(2f); 
			
			stringAnimate2 = "";
		}
	}
	IEnumerator AnimateText555555555555(){
		while (true){
			stringAnimate2 = "";
			yield return StartCoroutine(AnimateText55());
			
			yield return new WaitForSeconds(2f); 
			
			stringAnimate2 = "";
			yield return StartCoroutine(AnimateText555());
			
			yield return new WaitForSeconds(2f); 
			
			stringAnimate2 = "";
		}
	}
	
	IEnumerator AnimateText66(){
		while (true){
			stringAnimate2 = "";
			yield return StartCoroutine(AnimateText9());
			
			
			
			yield return null;
			yield return null;
			yield return null;
			yield return null;
			yield return null;
			yield return null;
			
			yield return null;
			stringAnimate2 = "";
		}
	}
	
	
}