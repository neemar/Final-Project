using UnityEngine;
using System.Collections;

public class dancingHoho : MonoBehaviour {
	
	// Use this for initialization
	void Start () {
		StartCoroutine( ugh3());
	}
	
	// Update is called once per frame
	IEnumerator ugh3(){
		while (true){
			
			transform.Rotate(new Vector3(0f,40f,0f));
			yield return new WaitForSeconds(1f); 
			
			transform.Rotate(new Vector3(0f,-40f,0f));
			yield return new WaitForSeconds(0.6f); 
			
			transform.Rotate(new Vector3(0f,40f,0f));
			yield return new WaitForSeconds(0.6f); 
			transform.Rotate(new Vector3(0f,0f,-10f));
			yield return new WaitForSeconds(0.2f);

			
			transform.Rotate(new Vector3(0f,0f,10f));
			yield return new WaitForSeconds(0.2f);
			
			transform.Rotate(new Vector3(0f,0f,-10f));
			yield return new WaitForSeconds(0.2f);
			transform.Rotate(new Vector3(0f,0f,10f));
			yield return new WaitForSeconds(0.2f);
			transform.Rotate(new Vector3(0f,0f,-10f));
			yield return new WaitForSeconds(0.2f);
			
			transform.Rotate(new Vector3(0f,0f,10f));
			yield return new WaitForSeconds(0.2f);
			transform.Rotate(new Vector3(0f,-40f,0f));
			yield return new WaitForSeconds(1f); 

		}}
}
