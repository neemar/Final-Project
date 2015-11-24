using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class StuffBreaking : MonoBehaviour {

	int score;
	public Text myText;
	float timeSpent;

	void OnStart () {
//		GameManager.score = 0;
		score = 0;
	}

	void OnTriggerEnter (Collider activator) {

		if (activator.tag =="Breakable") {
			timeSpent = timeSpent + Time.deltaTime;
			Destroy (activator.gameObject);
			score = score + 50;
//			GameManager.score = GameManager.score + 50;
			myText.text = "+50 points!";
			if (timeSpent > 2f) {
				myText.text = "";
			}
		}
	}
}