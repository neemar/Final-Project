using UnityEngine;
using System.Collections;

public class RotateHip : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKey(KeyCode.D)) {
			transform.Rotate (new Vector3 ( 0f, 2f, 0f));
		}
		if (Input.GetKey(KeyCode.J)) {
			transform.Rotate (new Vector3 ( 0f, -2f, 0f));
		} 
	}
}
