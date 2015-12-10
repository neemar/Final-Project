using UnityEngine;
using System.Collections;

public class AIMovement : MonoBehaviour {

	bool shouldIMove;
	// Use this for initialization
	void Start () {
		//randomly decide if ai start out moving or not
		int decideIfIMove = Random.Range (0, 2);
		if (decideIfIMove == 0) {
			shouldIMove = true;
		}
		else {
			shouldIMove = false;
		}
	}
	
	// Update is called once per frame
	void Update () {
		StartCoroutine (moveAI());
	}

	IEnumerator moveAI () {
		Ray aiRay = new Ray (transform.position, transform.forward);
		RaycastHit hit = new RaycastHit();

		//if ai should move
		if (shouldIMove == true) {
			//generate a number from 1-3 and move forward for that many seconds
			int moveSecs = Random.Range (1, 4);
			while (moveSecs > 0) {
				transform.Translate (new Vector3 (0f, 0f, 10f * Time.deltaTime));
				//if raycast hits something, stop 
				if (Physics.Raycast (aiRay, out hit, 50f)) {
					Debug.DrawRay (aiRay.origin, aiRay.direction * hit.distance, Color.red);
					//transform.Translate (new Vector3 (0f, 0f, 0f));
					shouldIMove = false;
					yield return new WaitForSeconds (3f);
				}
				moveSecs--;
			}
		}
		//if not, turn
		else {
			//generate a number from 1-3 and turn for that many seconds
			int turnSecs = Random.Range (1, 4);
			while (turnSecs > 0) {
				transform.eulerAngles += new Vector3 (0f, -10f, 0f);
				turnSecs--;
			}
			shouldIMove = true;
		}
		yield return new WaitForSeconds (3f);
		//Debug.Log (Time.deltaTime);
	}
}
