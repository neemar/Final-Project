using UnityEngine;
using System.Collections;

public class player1Scissors : MonoBehaviour {
	public Transform scissors; 
	public Transform cord; 
	bool hasScissors = false; 

	
	// Update is called once per frame
	void Update () {
		if ((scissors.position - transform.position).magnitude < 5f && Input.GetKeyDown (KeyCode.E)){
			hasScissors = true; 
			GameObject.Destroy (scissors);  

		}
		if ((cord.position - transform.position).magnitude < 5f && hasScissors){
			hasScissors = false;
			GameObject.Destroy (cord); 

		}

	}
}
