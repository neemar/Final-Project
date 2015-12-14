using UnityEngine;
using System.Collections;

public class ThrowObject : MonoBehaviour {

	bool holdingObject = false;
	
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
					if (holdingObject == false && Input.GetKeyDown (KeyCode.K)) {
						holdingObject = true;
						hit.transform.parent = transform;
					}
					else if (holdingObject == true && Input.GetKeyDown (KeyCode.K)) {
						holdingObject = false;
						hit.transform.parent = null;
						hit.transform.GetComponent<Rigidbody>().constraints &= ~RigidbodyConstraints.FreezePosition;
					}
					hit.transform.GetComponent<Rigidbody>().AddForce (hit.transform.forward * 2000);
				}
				//if player two presses K
				else {//(transform.tag == "PlayerTwo") {
					if (holdingObject == false && Input.GetKeyDown (KeyCode.K)) {
						holdingObject = true;
						hit.transform.parent = transform;
					}
					else if (holdingObject == true && Input.GetKeyDown (KeyCode.K)) {
						holdingObject = false;
						hit.transform.parent = null;
						hit.transform.GetComponent<Rigidbody>().constraints &= ~RigidbodyConstraints.FreezePosition;
					}
					hit.transform.GetComponent<Rigidbody>().AddForce (hit.transform.forward * 2000);
				}
			}
		}
	}
}