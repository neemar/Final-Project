using UnityEngine;
using System.Collections;

public class AIMovement : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		StartCoroutine (moveAI());
	}

	IEnumerator moveAI () {
		//generate a random number from 1 to 3
		int turnSecs = Random.Range (1, 4);

		int moveSecs = Random.Range (1, 4);
		//create raycasts
		Debug.Log ("LOLOLOL");
		Ray playerRay = new Ray (transform.position, transform.forward);
		RaycastHit hit = new RaycastHit();
		//move forward for random number of seconds
		while (moveSecs > 0) { 
			transform.Translate (new Vector3(0f, 0f, 45f * Time.deltaTime));
			//if ai raycast hits something, turn
			if (Physics.Raycast (playerRay, out hit, 30f)) {
				Debug.DrawRay ( playerRay.origin, playerRay.direction * hit.distance, Color.black);
			//	yield return new WaitForSeconds(3f);
				//character turns for random number of seconds
				while (turnSecs > 0) {
					transform.localEulerAngles += new Vector3 (0f, 10f, 0f);
					turnSecs--; 
				}
			}
			moveSecs--;
		}
		//wait few seconds before moving again
		yield return new WaitForSeconds(2f);
	}
}
