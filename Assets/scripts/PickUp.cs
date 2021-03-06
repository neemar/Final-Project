﻿using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class PickUp : MonoBehaviour {

	// Update is called once per frame
	void Update () {
		Ray playerRay = new Ray (transform.position, transform.forward);
		RaycastHit hit = new RaycastHit();
		if (Physics.Raycast (playerRay, out hit, 100f)) {
			//npcTextPrefab.text = "LOL";
			Debug.DrawRay ( playerRay.origin, playerRay.direction * hit.distance, Color.green);
			//if the item the raycast is hitting is able to be picked up
			if (hit.transform.gameObject.tag == "Pickupable") {
				//if player1 presses k, pick up item
				if (transform.tag == "PlayerOne" && Input.GetKeyDown (KeyCode.E)) {
					ObjectInteractions.girlItems.Add ("Scissors", hit.transform);
					hit.transform.parent = transform;
					hit.collider.enabled = false;
				}
				//if player2 presses e, pick up item
				if (transform.tag == "PlayerTwo" && Input.GetKeyDown (KeyCode.K)) {
					LEFTobjInt.boyItems.Add ("Scissors", hit.transform);
					hit.transform.parent = transform;
					hit.collider.enabled = false;
				}
			}
		}
	}
}
