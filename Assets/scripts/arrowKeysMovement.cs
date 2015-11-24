using UnityEngine;
using System.Collections;

public class arrowKeysMovement : MonoBehaviour {
	Rigidbody rbody; 

	void Start (){
		rbody = GetComponent<Rigidbody> (); 
	}

	// Update is called once per frame
	void Update () {
		if (Input.GetKey (KeyCode.UpArrow)) {
			//rbody.AddForce(new Vector3(0f, 0f, 10f * Time.deltaTime)); 
			transform.Translate(new Vector3(0f, 0f, 10f * Time.deltaTime)); 
			Debug.Log ("I am moving to the right!"); 

			
		}
		if (Input.GetKey (KeyCode.DownArrow)) {
			//rbody.AddForce(new Vector3(0f, 0f, -10f * Time.deltaTime)); 
			transform.Translate(new Vector3(0f, 0f, -10f * Time.deltaTime)); 

			Debug.Log ("I am moving to the right!"); 

			
		}
		if (Input.GetKey (KeyCode.LeftArrow)) {
			transform.localEulerAngles += new Vector3(0f, -10f, 0f);
			Debug.Log ("I am moving to the right!"); 

			
		}
		if (Input.GetKey (KeyCode.RightArrow)) {
			transform.localEulerAngles += new Vector3(0f, 10f, 0f); 
			Debug.Log ("I am moving to the right!"); 
			
		}

	}
}
