using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class throwobjectelev : MonoBehaviour {
	
	bool holdingObject = false;

	public Text npcTextPrefab;
	public Text npcTextPrefab2;

	// Update is called once per frame


	void Update () {
		//create raycast
		Ray playerRay = new Ray (transform.position, transform.forward);
		RaycastHit hit = new RaycastHit();
		if (Physics.Raycast (playerRay, out hit, 10f)) {
			Debug.DrawRay ( playerRay.origin, playerRay.direction * hit.distance, Color.red);
			if (hit.transform.gameObject.tag == "Throwable") {
				npcTextPrefab.text = "Press G to pick scissors up";
				//if player one presses G
					if (holdingObject == false && Input.GetKeyDown (KeyCode.G)) {
						npcTextPrefab.text = "Press G to throw";
						guy3.instance.picked= true;
						holdingObject = true;
						hit.transform.parent = transform;
					}
					else if (holdingObject == true && Input.GetKeyDown (KeyCode.G)) {
						holdingObject = false;
						guy3.instance.donezo= true;
						hit.transform.parent = null;
						hit.transform.GetComponent<Rigidbody>().constraints &= ~RigidbodyConstraints.FreezePosition;
					}
					hit.transform.GetComponent<Rigidbody>().AddForce (hit.transform.forward * 2000);
				}
				else {
			npcTextPrefab2.text = "";
		}
	}
	}}