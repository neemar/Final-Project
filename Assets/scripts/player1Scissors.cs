using UnityEngine;
using System.Collections;

public class player1Scissors : MonoBehaviour {
	public Transform scissors; 
	public Transform cord; 
	bool hasScissors = false; 

	
	// Update is called once per frame
	void Update () {
		if (scissors!= null && (scissors.position - transform.position).magnitude < 5f && Input.GetKeyDown (KeyCode.E)){
			hasScissors = true; 
			Destroy(scissors.gameObject); 

		}

		if (cord!= null && (cord.position - transform.position).magnitude < 10f && hasScissors && Input.GetKeyDown (KeyCode.E)){
		
			hasScissors = false;
			Destroy (cord.gameObject); 

		}

	}
}
