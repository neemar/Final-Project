using UnityEngine;
using System.Collections;

public class jump : MonoBehaviour {

//	Rigidbody rbody;
	bool isJumping = false;

	// Use this for initialization
	void Start () {
//		rbody = GetComponent<Rigidbody>();
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKeyDown (KeyCode.Space)) {
			if (isJumping == false) {
				//transform.position += transform.up * 50f; //* Time.deltaTime;
				transform.Translate (Vector3.up * 200f * Time.deltaTime);
				//rbody.AddForce (Vector3.up);
				//isJumping = true;
			}
		}

//		isJumping = false;
	}

}
