﻿using UnityEngine;
using System.Collections;

public class arrowelev : MonoBehaviour {
	
	//Rigidbody rbody;	
	
	// Use this for initialization
	void Start () {
		//	rbody = transform.GetComponent<Rigidbody>();
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKey (KeyCode.UpArrow)) {
			//rbody.AddForce(transform.forward);
			transform.Translate(new Vector3(0f, 0f, 9f * Time.deltaTime)); 
			
		}
		if (Input.GetKey (KeyCode.DownArrow)) {
			//rbody.AddForce(-transform.forward);
			transform.Translate(new Vector3(0f, 0f, -9f * Time.deltaTime)); 
			
		}
		if (Input.GetKey (KeyCode.LeftArrow)) {
			transform.localEulerAngles += new Vector3(0f, -1.5f, 0f);
			
		}
		if (Input.GetKey (KeyCode.RightArrow)) {
			transform.localEulerAngles += new Vector3(0f, 1.5f, 0f); 
			
		}
	}
}