using UnityEngine;
using System.Collections;
using UnityEngine.UI; 

public class GUY1 : MonoBehaviour {

	public Transform person;
	public Transform person1;
	public Transform person2;
	public Transform person3;
	public Transform person31;
	public Transform person4;
	public Transform person41;
	public Transform person5;
	public Transform person51;
	public Transform person6;
	public Transform person61;
	
	public Text chartext;

	public bool notplaying= true;
	public bool notplaying1= true;
	public bool notplaying2= true;
	public bool notplaying3= true;
	public bool notplaying4= true;
	public bool notplaying5= true;
	public bool notplaying6= true;
	public bool secondperson= false;


	string myString11 = ("Yes, I have devoted my life to culture!");
	string myString10 = ("Culture...");
		string myString9 = ("Of course, of course!");
	string myString8 = ("Rockefeller, of course.");
		string myString7 = ("John?");
	string myString6 = ("The angle to the Chrysler Building is 3 degrees less stimulating than the view from John's place");
		string myString5 = ("What a splendid view!");
	string myString4 = ("All kids these days do is push objects over. Theres just no hatefulness in that!");
	string myString3 = ("I've wrecked my fair share of parties");
	string myString = ("I will never love again!");
	string myString2 = ("By the way, you can flush that cake down the toilet for a lot of points!");
	
	string stringAnimate = ""; 


void Start(){

		notplaying= true;
		 notplaying1= true;
		notplaying2= true;
		 notplaying3= true;
		 notplaying4= true;
	 notplaying5= true;
		notplaying6= true;
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
	IEnumerator AnimateText5555(){
		for (int i = 0; i < myString8.Length; i++) {
			stringAnimate += myString8[i]; 
			yield return new WaitForSeconds(0.05f); 
		}
	}
	IEnumerator AnimateText55555(){
		for (int i = 0; i < myString9.Length; i++) {
			stringAnimate += myString9[i]; 
			yield return new WaitForSeconds(0.05f); 
		}
	}
	IEnumerator AnimateText555555555555(){
	while (true){
		stringAnimate = "";
		yield return StartCoroutine(AnimateText5());
		
		yield return new WaitForSeconds(1f); 
		
		stringAnimate = "";
		yield return StartCoroutine(AnimateText55());
		
		yield return new WaitForSeconds(1f); 
		stringAnimate = "";
			yield return StartCoroutine(AnimateText555());
			
			yield return new WaitForSeconds(1f); 
			stringAnimate = "";
			yield return StartCoroutine(AnimateText5555());
			
			yield return new WaitForSeconds(1f); 
			stringAnimate = "";
			yield return StartCoroutine(AnimateText55555());
			
			yield return new WaitForSeconds(1.5f); 
			stringAnimate = "";
	}}


IEnumerator AnimateText4(){
		for (int i = 0; i < myString3.Length; i++) {
			stringAnimate += myString3[i]; 
			yield return new WaitForSeconds(0.05f); 
		}
	


	}	IEnumerator AnimateText44(){
		for (int i = 0; i < myString4.Length; i++) {
			stringAnimate += myString4[i]; 
			yield return new WaitForSeconds(0.05f); 
		}
		
	}



	IEnumerator AnimateText4444444(){
		while (true){
			stringAnimate = "";
			yield return StartCoroutine(AnimateText4());
			
			yield return new WaitForSeconds(1f); 
			
			stringAnimate = "";
			yield return StartCoroutine(AnimateText44());
			
			yield return new WaitForSeconds(1f); 
			stringAnimate = "";
			
		}}

	IEnumerator AnimateText3(){
		for (int i = 0; i < myString10.Length; i++) {
			stringAnimate += myString10[i]; 
			yield return new WaitForSeconds(0.05f); 
		}
		
		
		
	}	IEnumerator AnimateText33(){
		for (int i = 0; i < myString11.Length; i++) {
			stringAnimate += myString11[i]; 
			yield return new WaitForSeconds(0.05f); 
		}
		
	}
	
	
	
	IEnumerator AnimateText3333(){
		while (true){
			stringAnimate = "";
			yield return StartCoroutine(AnimateText3());
			
			yield return new WaitForSeconds(1f); 
			
			stringAnimate = "";
			yield return StartCoroutine(AnimateText33());
			
			yield return new WaitForSeconds(1f); 
			stringAnimate = "";
			
		}}
	
	IEnumerator AnimateText1(){
		for (int i = 0; i < myString.Length; i++) {
			stringAnimate += myString[i]; 
			yield return new WaitForSeconds(0.05f); 
		}
		
	}
	
	IEnumerator AnimateText11(){
		for (int i = 0; i < myString2.Length; i++) {
			stringAnimate += myString2[i]; 
			yield return new WaitForSeconds(0.05f); 
		}
	}
	
	IEnumerator AnimateText111(){
		while (true){
			stringAnimate = "";
			yield return StartCoroutine(AnimateText1());
			
			yield return new WaitForSeconds(1f); 

			stringAnimate = "";
			yield return StartCoroutine(AnimateText11());
			
			yield return new WaitForSeconds(1f); 
			stringAnimate = "";

		}}
	

	void Update () {

		float ewew1= Vector3.Distance(transform.position,person1.position);
		float ewew3= Vector3.Distance(transform.position,person3.position);
		float ewew4= Vector3.Distance(transform.position,person4.position);

		chartext.text= (stringAnimate);
		if (ewew1<=60f && notplaying1) {

			StartCoroutine( AnimateText111());
			notplaying1 = false;
			 if (ewew1>60f) {
				StopAllCoroutines();
				notplaying1=true;

				stringAnimate = "";
			}}
	
		if (ewew3<60f && notplaying3) {
			
			StartCoroutine( AnimateText3333());
	notplaying3 = false;
			if (ewew3>60f) {
				StopAllCoroutines();
				notplaying3=true;

				stringAnimate = "";
			}
		}
		if (ewew4<60f && notplaying4) {
			
			StartCoroutine( AnimateText4444444());
			notplaying4 = false;
			if (ewew4>60f) {
				StopAllCoroutines();
				notplaying4=true;
				
				stringAnimate = "";
			}
		}




	}}
	
	
	

