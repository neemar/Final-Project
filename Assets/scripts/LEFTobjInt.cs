﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class LEFTobjInt : MonoBehaviour {
	
	public static Dictionary<string, Transform> boyItems = new Dictionary<string, Transform>();
	
	// Use this for initialization
	void Start () {
		//add all children to dictionary
		foreach (Transform child in transform) {
			boyItems.Add (child.name, child);
		}
	}
	
	// Update is called once per frame
	void Update () {
		Ray playerRay = new Ray (transform.position, transform.forward);
		RaycastHit hit = new RaycastHit();
		if (Physics.Raycast (playerRay, out hit, 100f)) {
			//npcTextPrefab.text = "LOL";
			Debug.DrawRay ( playerRay.origin, playerRay.direction * hit.distance, Color.blue);
			//if the item the raycast is hitting the TV
			if (hit.transform.gameObject.tag == "TV") {
				//if player has object required to interact with TV then...
				if (boyItems.ContainsKey ("Scissors")) {
					if (Input.GetKeyDown (KeyCode.G)) {
						Destroy (hit.transform.gameObject); 
						Destroy (transform.Find ("Scissors").gameObject);
						boyItems.Remove ("Scissors");
						//Destroy
					}
				}
			}
		}
	}
}
