using UnityEngine;
using System.Collections;

public class jump : MonoBehaviour {

//	Rigidbody rbody;
	bool isPlayerOneJumping = false;
	bool isPlayerTwoJumping = false;

	// Use this for initialization
	void Start () {
//		rbody = GetComponent<Rigidbody>();
	}
	
	// Update is called once per frame
	void Update () {
		if (transform.tag == "PlayerOne") {
			if (Input.GetKeyDown (KeyCode.Space)) {
				if (isPlayerOneJumping == false) {
					//transform.position += transform.up * 50f; //* Time.deltaTime;
					transform.Translate (Vector3.up * 200f * Time.deltaTime);
					//rbody.AddForce (Vector3.up);
					isPlayerOneJumping = true;
				}
			}
		}
		else {
			if (Input.GetKeyDown (KeyCode.Z)) {
				if (isPlayerTwoJumping == false) {
					transform.Translate (Vector3.up * 200f * Time.deltaTime);
					isPlayerTwoJumping = true;
				}
			}
		}
		isPlayerOneJumping = false;
		isPlayerTwoJumping = false;
	}
}
