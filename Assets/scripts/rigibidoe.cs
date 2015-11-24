using UnityEngine;
using System.Collections;

public class rigibidoe : MonoBehaviour {
   

    // Use this for initialization
  


   
    void Update()
    {
   
		if (Input.GetKey (KeyCode.W)) {
			transform.Translate(new Vector3(0f, 0f, 25f * Time.deltaTime)); 
			
		}
		if (Input.GetKey (KeyCode.S)) {
			transform.Translate (new Vector3(0f, 0f, -25f * Time.deltaTime)); 
			
		}

		if (!GameManager.instance.zoom){

			if (Input.GetKey (KeyCode.A)) {
				transform.localEulerAngles += new Vector3(0f, -2f, 0f);
				
			}
			if (Input.GetKey (KeyCode.D)) {
				transform.localEulerAngles += new Vector3(0f, 2f, 0f); 
				
			}     
			if (Input.GetKey (KeyCode.Q)){
				if (Camera.main.transform.eulerAngles.x >0f && Camera.main.transform.eulerAngles.x <80f){
					Camera.main.transform.eulerAngles += new Vector3 (15f,0f,0f) * Time.deltaTime;
				}
			}
			if (Input.GetKey (KeyCode.E)){
				if (Camera.main.transform.eulerAngles.x >0f && Camera.main.transform.eulerAngles.x <80f){
					Camera.main.transform.eulerAngles += new Vector3 (-15f,0f,0f) * Time.deltaTime;
				}
    }

	}


	}}