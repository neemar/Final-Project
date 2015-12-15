using UnityEngine;
using System.Collections;

public class dancingHehe : MonoBehaviour {

	// Use this for initialization
	void Start () {
		StartCoroutine( ugh());
	}
	
	// Update is called once per frame
	IEnumerator ugh(){
		while (true){

			transform.Rotate(new Vector3(0f,40f,0f));
			
			yield return new WaitForSeconds(1f); 
			
			transform.Rotate(new Vector3(0f,-40f,0f));
			transform.Rotate(new Vector3(0f,0f,-10f));
			yield return new WaitForSeconds(0.5f); 
			transform.Rotate(new Vector3(0f,0f,10f));
			yield return new WaitForSeconds(0.5f); 
			yield return new WaitForSeconds(1f); 
			transform.Rotate(new Vector3(0f,-40f,0f));
			yield return new WaitForSeconds(1f); 
			transform.Rotate(new Vector3(0f,0f,-10f));
			yield return new WaitForSeconds(0.5f); 
			transform.Rotate(new Vector3(0f,0f,10f));
			yield return new WaitForSeconds(0.5f); 
			transform.Rotate(new Vector3(0f,40f,0f));
			yield return new WaitForSeconds(1f); 
			transform.Rotate(new Vector3(0f,0f,-10f));
			yield return new WaitForSeconds(0.5f); 
			transform.Rotate(new Vector3(0f,0f,10f));
			yield return new WaitForSeconds(0.5f); 
		}}
}
