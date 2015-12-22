using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;

public class TextInteractions : MonoBehaviour {

	public Text npcTextPrefab;
	public GameObject cake;
	public GameObject music1;
	
	public GameObject music2;
	Vector3 toilet= new Vector3(275f,391f,-240f);
	Vector3 outoftoilet= new Vector3(195f,125f,-251f);

	public static List<string> inventoryOne = new List<string>();
	public static List<string> inventoryTwo = new List<string>();
	public bool musicUnchanged= true;
	public bool cakecake= false;
	void Start () {
		cakecake= false;
		//clear the inventory lists
		inventoryOne.Clear ();
		inventoryTwo.Clear ();
		cake.SetActive(true);
		music2.SetActive(false);

	}

	// Update is called once per frame
	void Update () {

		Ray playerRay = new Ray (transform.position, transform.forward);
		RaycastHit hit = new RaycastHit();
		if (Physics.Raycast (playerRay, out hit, 100f)) {
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

			else if (hit.transform.gameObject.tag == "Throwable") {
				if (transform.tag == "PlayerOne") {
					//player one
					npcTextPrefab.text = "Press G to pick up " + hit.transform.gameObject.name;
					
					//if player one presses J, put that object name into inventory list and delete object
					if (Input.GetKey (KeyCode.G)) {
						npcTextPrefab.text = "Press G to throw " + hit.transform.gameObject.name;
					

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
			else if (hit.transform.gameObject.tag == "Pickupable") {

			if (hit.transform.gameObject.tag == "Pickupable") {

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
			else if (hit.transform.gameObject.tag == "toilet") {
				if (transform.tag == "PlayerOne") {
					//player one
					npcTextPrefab.text = "Press G to enter bathroom";
					
					//if player one presses J, put that object name into inventory list and delete object
					if (Input.GetKey (KeyCode.G)) {
						transform.position= toilet; 
					}
				}
				else {
					if (transform.tag == "PlayerTwo") {
					//player two
					npcTextPrefab.text = "Press K to enter bathroom";
					if (Input.GetKey (KeyCode.K)) {
						transform.position= toilet; 
					}
				}
				}
			}
			else if (hit.transform.gameObject.tag == "toilet2") {
				if (transform.tag == "PlayerOne") {
					//player one
					npcTextPrefab.text = "Press G to exit bathroom";
					
					//if player one presses J, put that object name into inventory list and delete object
					if (Input.GetKey (KeyCode.G)) {
						transform.position= outoftoilet; 
					}
				}
				else {
					if (transform.tag == "PlayerTwo") {
						//player two
						npcTextPrefab.text = "Press K to exit bathroom";
						if (Input.GetKey (KeyCode.K)) {
							transform.position= outoftoilet; 
						}
					}
				}
			}
			else if (hit.transform.gameObject.tag == "turntab" && musicUnchanged) {
				if (transform.tag == "PlayerOne") {
					//player one
					npcTextPrefab.text = "Press G to change music";
					
					//if player one presses J, put that object name into inventory list and delete object
					if (Input.GetKey (KeyCode.G)) {
						music1.SetActive(false);
						music2.SetActive(true);
						musicUnchanged=false;

						ScoreManager.playerOneScore+= 3;

						ScoreManager.playerOneScore+=3;

					}
				}
				else {
					if (transform.tag == "PlayerTwo") {
						//player two
						npcTextPrefab.text = "Press K to change music";
						if (Input.GetKey (KeyCode.K)) {
							music1.SetActive(false);
							music2.SetActive(true);
							musicUnchanged=false;

							ScoreManager.playerTwoScore+= 3;

							ScoreManager.playerTwoScore+=3;

						}
					}
				}
			}

			else if (hit.transform.gameObject.name == "Cake") {
				if (transform.tag == "PlayerOne") {
					//player one
					npcTextPrefab.text = "Press G to steal the cake!";
					
					//if player one presses J, put that object name into inventory list and delete object
					if (Input.GetKey (KeyCode.G)) {
						ScoreManager.playerOneScore+= 2;
						
						cakecake= true;
						npcTextPrefab.text = "You sneakily stuff the cake down your shirt";
						cake.SetActive(false);
						cakecake= true;
					}
				}
				else {
					if (transform.tag == "PlayerTwo") {
						//player two
						npcTextPrefab.text = "Press G to steal the cake!";
						if (Input.GetKey (KeyCode.K)) {
							npcTextPrefab.text = "You sneakily stuff the cake down your shirt";
							cake.SetActive(false);
							cakecake= true;
							ScoreManager.playerTwoScore+=2;
							cake.SetActive(false);
						}
					}
				}
			}
			else if (hit.transform.gameObject.tag == "Wuhu") {
				if (transform.tag == "PlayerOne" && cakecake){
					npcTextPrefab.text = "Press G to clog the toilet with the cake!";
					if (Input.GetKey (KeyCode.G)) {
						npcTextPrefab.text = "You did it!";
						ScoreManager.playerOneScore+=7;
					}}


				else if (transform.tag == "PlayerOne"&&!cakecake) {
					//player one
					npcTextPrefab.text = "There has to be something important to flush away";
					
					

				}
				else if (transform.tag == "PlayerTwo" && cakecake){
					npcTextPrefab.text = "Press K to clog the toilet with the cake!";
					if (Input.GetKey (KeyCode.G)) {
						npcTextPrefab.text = "You did it!";
						ScoreManager.playerTwoScore+=7;
					}}
						
						
						else if (transform.tag == "PlayerTwo"&& !cakecake) {
							//player one
							npcTextPrefab.text = "There has to be something important to flush away";
							
							
						}
					
			}
		//if not in range of anything/anyone, set text to nothing
		else {
			npcTextPrefab.text = "";
		}
	}
		}}}
