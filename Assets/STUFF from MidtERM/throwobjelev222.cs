using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class throwobjelev222: MonoBehaviour {
	
	bool holdingObject2 = false;
	
	public Text npcTextPrefab3;
	
	// Update is called once per frame
	
	
	void Update () {
		//create raycast
		Ray playerRay = new Ray (transform.position, transform.forward);
		RaycastHit hit = new RaycastHit();
		if (Physics.Raycast (playerRay, out hit, 10f)) {
			Debug.DrawRay ( playerRay.origin, playerRay.direction * hit.distance, Color.red);
			if (hit.transform.gameObject.tag == "Throwable2") {
				npcTextPrefab3.text = "Press K to pick scissors up";
				//if player one presses G
				if (holdingObject2 == false && Input.GetKeyDown (KeyCode.K)) {
					npcTextPrefab3.text = "Press K to throw";
					guy2.instance.picked2= true;
					holdingObject2 = true;
					hit.transform.parent = transform;
				}
				else if (holdingObject2 == true && Input.GetKeyDown (KeyCode.K)) {
					holdingObject2 = false;
					guy2.instance.donezo2= true;
					hit.transform.parent = null;
					hit.transform.GetComponent<Rigidbody>().constraints &= ~RigidbodyConstraints.FreezePosition;
				}
				hit.transform.GetComponent<Rigidbody>().AddForce (hit.transform.forward * 2000);
			}
			else {
				npcTextPrefab3.text = "";
			}
		}
	}}