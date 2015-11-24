using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;

public class NPCText : MonoBehaviour {

	public Text npcTextPrefab;
	public static List<string> inventoryOne = new List<string>();
	public static List<string> inventoryTwo = new List<string>();

	void Start () {
		//clear the inventory lists
		inventoryOne.Clear ();
		inventoryTwo.Clear ();
	}

	// Update is called once per frame
	void Update () {

		Ray playerRay = new Ray (transform.position, transform.forward);
		RaycastHit hit = new RaycastHit();
		if (Physics.Raycast (playerRay, out hit, 10f)) {
			//npcTextPrefab.text = "LOL";
			Debug.DrawRay ( playerRay.origin, playerRay.direction * hit.distance, Color.green);
			if (hit.transform.gameObject.tag == "TV") {
				npcTextPrefab.text = "Need a sisscor to cut the wires";
			}
			else if (hit.transform.gameObject.tag == "NPC") {
				npcTextPrefab.text = "Hello";
			}
			else if (hit.transform.gameObject.tag == "Pickupable") {
				if (transform.tag == "PlayerOne") {
					//player one
					npcTextPrefab.text = "Press J to pick up " + hit.transform.gameObject.name;

					//if player one presses J, put that object name into inventory list and delete object
					if (Input.GetKey (KeyCode.J)) {
						inventoryOne.Add (hit.transform.gameObject.name);
						Destroy (hit.transform.gameObject);
					}
				}
				else {
					//player two
					npcTextPrefab.text = "Press E to pick up " + hit.transform.gameObject.name;
					if (Input.GetKey (KeyCode.E)) {
						inventoryTwo.Add (hit.transform.gameObject.name);
						Destroy (hit.transform.gameObject);
					}
				}
			}
		}
		//if not in range of anything/anyone, set text to nothing
		else {
			npcTextPrefab.text = "";
		}
	}
}
