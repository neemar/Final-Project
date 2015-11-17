using UnityEngine;
using System.Collections;

public class RotateArmR : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKeyDown(KeyCode.I)) {
			transform.Rotate (new Vector3 ( 0f, 0f, 15f));
		}
		if (Input.GetKeyDown(KeyCode.K)) {
			transform.Rotate (new Vector3 ( 0f, 0f, -15f));
		} 
	}
}
