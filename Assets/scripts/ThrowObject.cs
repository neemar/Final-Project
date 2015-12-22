using UnityEngine;
using System.Collections;

public class ThrowObject : MonoBehaviour {

	public Camera playerCam;
	public Vector3 cameraStartPos;

	public Transform playerMarker;

	bool holdingObject = false;
	bool threw = false;

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
						hit.transform.parent = transform;
						threw = false;
					}
					else if (holdingObject == true && Input.GetKeyDown (KeyCode.G)) {
						holdingObject = false;
						hit.transform.parent = null;
						hit.transform.tag = "Flying";
						threw = true;
						hit.transform.GetComponent<Rigidbody>().constraints &= ~RigidbodyConstraints.FreezePosition;
					}
					hit.transform.GetComponent<Rigidbody>().AddForce (transform.forward * 2000);
				}
				//if player two presses K
				else {//(transform.tag == "PlayerTwo") {
					if (holdingObject == false && Input.GetKeyDown (KeyCode.K)) {
						holdingObject = true;
						threw = false;
						hit.transform.parent = transform;
					}
					else if (holdingObject == true && Input.GetKeyDown (KeyCode.K)) {
						holdingObject = false; 
						hit.transform.parent = null;
						hit.transform.tag = "Flying";
						threw = true;
						hit.transform.GetComponent<Rigidbody>().constraints &= ~RigidbodyConstraints.FreezePosition;
					}
					hit.transform.GetComponent<Rigidbody>().AddForce (transform.forward * 2000);
				}
			}
		}
	}
	void OnCollisionEnter(Collision collision){
		//Debug.Log ("Threw: " + threwObject);
		//shake camera if player didnt throw object
		if (collision.gameObject.tag == "Flying" && threw == false) {
			StartCoroutine (shake (10f));
			playerCam.transform.position = playerMarker.position;
		}
		threw = false;
	}

	IEnumerator shake (float shakePower) {
		float t = 5f; 
		while (t > 0f) {
			t -= Time.deltaTime / 0.5f;
			Vector3 cameraPosition = playerMarker.position;
			Vector3 shakeVector = playerCam.transform.right * Mathf.Sin (Time.time * 50f)
				+ playerCam.transform.up * Mathf.Sin (Time.time * 47f );
			playerCam.transform.position = cameraPosition + shakeVector * t * shakePower;
			yield return 0;
		}
	}
		

}