using UnityEngine;
using System.Collections;

public class RotateArmR : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKey(KeyCode.I)) {
			transform.Rotate (new Vector3 ( 0f, 0f, 2f));
		}
		if (Input.GetKey(KeyCode.K)) {
			transform.Rotate (new Vector3 ( 0f, 0f, -2f));
		} 
	}
}
