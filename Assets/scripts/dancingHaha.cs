using UnityEngine;
using System.Collections;

public class dancingHaha : MonoBehaviour {
	
	// Use this for initialization
	void Start () {
		StartCoroutine( ugh1());
	}
	
	// Update is called once per frame
	IEnumerator ugh1(){
		while (true){
			
			transform.Rotate(new Vector3(-10f,0f,0f));
			yield return new WaitForSeconds(1f); 
			transform.Rotate(new Vector3(0f,0f,-10f));
			yield return new WaitForSeconds(0.5f); 
			transform.Rotate(new Vector3(0f,0f,10f));
			yield return new WaitForSeconds(0.5f); 
			transform.Rotate(new Vector3(0f,0f,10f));
			yield return new WaitForSeconds(0.7f); 
			transform.Rotate(new Vector3(0f,0f,-10f));
			yield return new WaitForSeconds(0.7f); 
			transform.Rotate(new Vector3(10f,0f,0f));
			yield return new WaitForSeconds(0.5f); 
			transform.Rotate(new Vector3(10f,0f,0f));
			yield return new WaitForSeconds(0.5f); 
			transform.Rotate(new Vector3(-10f,0f,0f));
			yield return new WaitForSeconds(1f); 
		}}
}
