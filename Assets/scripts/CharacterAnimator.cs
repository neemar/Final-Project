using UnityEngine;
using System.Collections;

public class CharacterAnimator : MonoBehaviour {
	
	Animator myAnimator; // assign via GetComponent() in Start
	
	bool playAnim = false;
	
	void Start () {
		myAnimator = GetComponent<Animator>(); // cache shortcut
	}
	
	// Update is called once per frame
	void Update () {
		if (transform.gameObject.tag == "PlayerOne") {
			if ( Input.GetKey (KeyCode.W) || Input.GetKey (KeyCode.S) ||
			     Input.GetKey (KeyCode.A) || Input.GetKey (KeyCode.D)) {
				playAnim = true;
			}
			else {
				playAnim = false;
			}
			myAnimator.SetBool ("IsMoving", playAnim); // pass Bool to controller
		}
		else if (transform.gameObject.tag == "PlayerTwo") {
			if ( Input.GetKey (KeyCode.UpArrow) || Input.GetKey (KeyCode.DownArrow) ||
			    Input.GetKey (KeyCode.LeftArrow) || Input.GetKey (KeyCode.RightArrow)) {
				playAnim = true; //playAnim is true if player is pressing movement keys
			}
			else {
				playAnim = false;
			}
			myAnimator.SetBool ("IsMoving", playAnim); // pass Bool to controller
		}
	}
}