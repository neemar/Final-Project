﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class ObjectInteractions : MonoBehaviour {

	public static Dictionary<string, Transform> girlItems = new Dictionary<string, Transform>();

	// Use this for initialization
	void Start () {
		//add all children to dictionary
		foreach (Transform child in transform) {
			girlItems.Add (child.name, child);
		}
	}
	
	// Update is called once per frame
	void Update () {
		Ray playerRay = new Ray (transform.position + new Vector3(0f, 30, 0f), transform.forward);
		RaycastHit hit = new RaycastHit();
		if (Physics.Raycast (playerRay, out hit, 100f)) {
			//npcTextPrefab.text = "LOL";
			Debug.DrawRay ( playerRay.origin, playerRay.direction * hit.distance, Color.blue);
			//if the item the raycast is hitting the TV
			if (hit.transform.gameObject.tag == "TV") {
				//if player has object required to interact with TV then...
				if (girlItems.ContainsKey ("Scissors")) {
					if (Input.GetKeyDown (KeyCode.G)) {
						Destroy (hit.transform.gameObject); 
						Destroy (transform.Find ("Scissors").gameObject);
						girlItems.Remove ("Scissors");
						//Destroy
					}
				}
			}
			if ( hit.transform.gameObject.tag == "toilet" ) {
				if (girlItems.ContainsKey("Cake")) {
					if ( Input.GetKeyDown (KeyCode.E) ) {
						Destroy (hit.transform.gameObject);
						Destroy (transform.Find ("Cake").gameObject);
						girlItems.Remove ("Cake");
					}
				}
			}
		}
	}
}
