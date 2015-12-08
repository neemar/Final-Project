using UnityEngine;
using System.Collections;
using UnityEngine.UI; 

public class GUY1 : MonoBehaviour {
	public Transform leftperson;
	public Transform rightperson;
	public Text leftpersontext;
	public Text rightpersontext;
	string myString = ("I will never love again !");
	string myString2 = ("The dead skyscrapers represent my heart");
	
	string stringAnimate = ""; 

	
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


		if (Vector3.Distance(leftperson.position,transform.position)<20f) {
			leftpersontext.text= (stringAnimate);
			StartCoroutine( AnimateText3());
		}
		
		if (Vector3.Distance(rightperson.position,transform.position)<20f) {
			rightpersontext.text= (stringAnimate);
			StartCoroutine( AnimateText3());
		}
		
	}
	
	
	
}