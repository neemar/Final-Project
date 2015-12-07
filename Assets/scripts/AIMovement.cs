using UnityEngine;
using System.Collections;

public class AIMovement : MonoBehaviour {

	bool shouldIMove = true;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		StartCoroutine (moveAI());
	}

	IEnumerator moveAI () {
		//generate a number from 1-3 and move forward for that many seconds
		int moveSecs = Random.Range (1, 4);
		Ray aiRay = new Ray (transform.position, transform.forward);
		RaycastHit hit = new RaycastHit();
		if (shouldIMove == true) {
			while (moveSecs > 0) {
				transform.Translate (new Vector3 (0f, 0f, 10f * Time.deltaTime));
				//if raycast hits something, stop for a few seconds
				if (Physics.Raycast (aiRay, out hit, 20f)) {
					Debug.DrawRay ( aiRay.origin, aiRay.direction * hit.distance, Color.black);
					//transform.Translate (new Vector3 (0f, 0f, 0f));
					shouldIMove = false;
					yield return new WaitForSeconds (3f);

					int turnSide = Random.Range (0, 2);
					int turnTime = Random.Range (1, 3);
					while (turnTime > 0) {
						if (turnSide == 0) {
							transform.eulerAngles += new Vector3 (0f, 30f, 0f);
							turnTime--;
						}
						else {
							transform.eulerAngles += new Vector3 (0f, -30f, 0f);
							turnTime--;
						}
					}
				}
				moveSecs--;
			}
			//ai turns either right or left depending on value for random number of seconds
			int turnSide2 = Random.Range (0, 2);
			int turnTime2 = Random.Range (1, 3);
			while (turnTime2 > 0) {
				if (turnSide2 == 0) {
					transform.eulerAngles += new Vector3 (0f, 10f, 0f);
					turnTime2--;
				}
				else {
					transform.eulerAngles += new Vector3 (0f, -10f, 0f);
					turnTime2--;
				}
			}
			yield return new WaitForSeconds (4f);
			shouldIMove = true;
		}
	}

}
