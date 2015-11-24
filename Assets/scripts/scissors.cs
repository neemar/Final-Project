using UnityEngine;
using System.Collections;

public class scissors : MonoBehaviour {
	public Transform skizzors; 
	public Transform cord; 
	bool hasScissors = false; 

	
	// Update is called once per frame
	void Update () {
		if ((skizzors.position - transform.position).magnitude < 5f && Input.GetKeyDown (KeyCode.E)){
			hasScissors = true; 
			GameObject.Destroy (skizzors);  

		}
		if ((cord.position - transform.position).magnitude < 5f && hasScissors){
			hasScissors = false;
			GameObject.Destroy (cord); 

		}

	}
}
