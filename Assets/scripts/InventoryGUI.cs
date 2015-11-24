using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class InventoryGUI : MonoBehaviour {

	private Rect inventoryWindow = new Rect (300, 100, 400, 400);
	private bool inventoryOpen = false;

	void OnGUI() {
		//create an inventory toggle button
		inventoryOpen = GUI.Toggle (new Rect (800, 50, 100, 50), inventoryOpen, "Inventory");
		if (inventoryOpen) {
			inventoryWindow = GUI.Window (0, inventoryWindow, InventoryWindowMethod, "Inventory");
		}
	}

	void InventoryWindowMethod (int windowID) {
		GUILayout.BeginArea (new Rect(0, 50, 400, 400));

		GUILayout.BeginHorizontal ();
		GUILayout.Button ("Item 1", GUILayout.Height (50));
		GUILayout.Button ("Item 2", GUILayout.Height (50));
		GUILayout.Button ("Item 3", GUILayout.Height (50));
		GUILayout.EndHorizontal();

		GUILayout.EndArea ();
	}
}
