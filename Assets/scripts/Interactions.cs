using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;

public class Interactions : MonoBehaviour {

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
		if (Physics.Raycast (playerRay, out hit, 200f)) {
			//npcTextPrefab.text = "LOL";
			Debug.DrawRay ( playerRay.origin, playerRay.direction * hit.distance, Color.green);
			if (hit.transform.gameObject.tag == "TV") {
				//if playerone has scissors and presses K
				if (transform.tag == "PlayerOne" && inventoryOne.Contains("Scissors")) {
					npcTextPrefab.text = "Press G to cut TV wires.";
					//gain 10 points and destroy tv
					if (Input.GetKeyDown (KeyCode.G)) {
						inventoryOne.Remove ("Scissors");
						ScoreManager.playerOneScore += 10;
						Destroy (hit.transform.gameObject);
					}
				}
				//if playertwo has scissors and presses r
				else if (transform.tag == "PlayerTwo" && inventoryTwo.Contains ("Scissors")) {
					npcTextPrefab.text = "Press K to cut TV wires.";
					//gain 10 points and destroy tv
					if (Input.GetKeyDown (KeyCode.K)) {
						inventoryTwo.Remove ("Scissors");
						ScoreManager.playerTwoScore += 10;
						Destroy (hit.transform.gameObject);
					}
				}
				else {
					npcTextPrefab.text = "Need a pair of sisscors to cut the wires";
				}
			}
			else if (hit.transform.gameObject.tag == "NPC") {
				npcTextPrefab.text = "Hello";
			}
			else if (hit.transform.gameObject.tag == "Pickupable") {
				if (transform.tag == "PlayerOne") {
					//player one
					npcTextPrefab.text = "Press G to pick up " + hit.transform.gameObject.name;

					//if player one presses J, put that object name into inventory list and delete object
					if (Input.GetKey (KeyCode.G)) {
						inventoryOne.Add (hit.transform.gameObject.name);
						Destroy (hit.transform.gameObject);
					}
				}
				else {
					//player two
					npcTextPrefab.text = "Press K to pick up " + hit.transform.gameObject.name;
					if (Input.GetKey (KeyCode.K)) {
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
