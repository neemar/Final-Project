using UnityEngine;
using System.Collections;

public class ThrowObject : MonoBehaviour {

	bool holdingObject = false;
	int itemTag;
	bool threwObject = false; 
	// Update is called once per frame
	void Update () {
		//create raycast
		Ray playerRay = new Ray (transform.position, transform.forward);
		RaycastHit hit = new RaycastHit();
		if (Physics.Raycast (playerRay, out hit, 30f)) {
			Debug.DrawRay ( playerRay.origin, playerRay.direction * hit.distance, Color.red);
			if (hit.transform.gameObject.tag == "Throwable") {
				//if player one presses G
				if (transform.tag == "PlayerOne") {
					if (holdingObject == false && Input.GetKeyDown (KeyCode.G)) {
						holdingObject = true;
						threwObject = false; 
						hit.transform.parent = transform;
					}
					else if (holdingObject == true && Input.GetKeyDown (KeyCode.G)) {
						holdingObject = false;
						threwObject = true; 
						hit.transform.parent = null;
						hit.transform.GetComponent<Rigidbody>().constraints &= ~RigidbodyConstraints.FreezePosition;
					}
					hit.transform.GetComponent<Rigidbody>().AddForce (transform.forward * 2000);
				}
				//if player two presses K
				else {//(transform.tag == "PlayerTwo") {
					if (holdingObject == false && Input.GetKeyDown (KeyCode.K)) {
						holdingObject = true;
						threwObject = false; 
						hit.transform.parent = transform;
					}
					else if (holdingObject == true && Input.GetKeyDown (KeyCode.K)) {
						holdingObject = false;
						threwObject = true; 
						hit.transform.parent = null;
						hit.transform.GetComponent<Rigidbody>().constraints &= ~RigidbodyConstraints.FreezePosition;
					}
					hit.transform.GetComponent<Rigidbody>().AddForce (transform.forward * 2000);
				}
			}
		}
	}
	void OnCollisionEnter(Collision collision){
		if (collision.gameObject.tag == "Throwable" && threwObject == true) {
			if (transform.gameObject.tag == "PlayerOne") {
				ObjectBreaking.boyGo = true; 
				Debug.Log ("Player 2 is hit");
			} else if (transform.gameObject.tag == "PlayerTwo") {
				ObjectBreaking.girlGo = true; 
				Debug.Log ("Player 1 is hit");
			}
		}
		threwObject = false; 

	}


}