using UnityEngine;
using System.Collections;

public class RotateHip : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKeyDown(KeyCode.D)) {
			transform.Rotate (new Vector3 ( 0f, 15f, 0f));
		}
		if (Input.GetKeyDown(KeyCode.J)) {
			transform.Rotate (new Vector3 ( 0f, -15f, 0f));
		} 
	}
}
