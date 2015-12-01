//using UnityEngine;
//using UnityEngine.UI;
//using System.Collections;
//using System.Collections.Generic;
//
//public class Inventory : MonoBehaviour {
//
//	public Text playerOneInventory;
//	public Text playerTwoInventory;
//
//	bool oneOpen = false;
//	bool twoOpen = false;
//
//	// Use this for initialization
//	void Start () {
//	
//	}
//	
//	// Update is called once per frame
//	void Update () {
//		//player one inventory
//		if (transform.tag == "PlayerOne") {
//			//if inventory is not open, then open it
//			if (Input.GetKeyDown (KeyCode.I)) {
//				if (oneOpen == false) {
//					playerOneInventory.text = "Inventory\n";
//					for (int i=0; i<TextInteractions.inventoryOne.Count; i++) {
//						playerOneInventory.text += TextInteractions.inventoryOne[i] + "\n";
//					}
//					oneOpen = true;
//				}
//				//if inventory is open, close it
//				else {
//					playerOneInventory.text = "";
//					oneOpen = false;
//				}
//			}
//		}
//		//player two inventory
//		else {
//			//if inventory is closed, open it
//			if (Input.GetKeyDown (KeyCode.Q)) {
//				if (twoOpen == false) {
//					playerTwoInventory.text = "Inventory\n";
//					for (int i=0; i<TextInteractions.inventoryTwo.Count; i++) {
//						playerTwoInventory.text += TextInteractions.inventoryTwo[i] + "\n";
//					}
//					twoOpen = true;
//				}
//				//if inventory is open, close it
//				else {
//					playerTwoInventory.text = "";
//					twoOpen = false;
//				}
//			}
//		}
//	}
//}
