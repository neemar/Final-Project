﻿using UnityEngine;
using System.Collections;

public class wasdelev : MonoBehaviour {
	
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKey (KeyCode.W)) {
			transform.Translate(new Vector3(0f, 0f, 9f * Time.deltaTime)); 
			
		}
		if (Input.GetKey (KeyCode.S)) {
			transform.Translate (new Vector3(0f, 0f, -9f * Time.deltaTime)); 
			
		}
		if (Input.GetKey (KeyCode.A)) {
			transform.localEulerAngles += new Vector3(0f, -1.5f, 0f);
			
		}
		if (Input.GetKey (KeyCode.D)) {
			transform.localEulerAngles += new Vector3(0f, 1.5f, 0f); 
			
		}
	}
}