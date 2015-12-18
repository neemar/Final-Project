using UnityEngine;
using System.Collections;

public class destroyAnim : MonoBehaviour {

	Animator myAnimator;
	bool playAnim = false; 
	bool objectHit1 = false; 
	bool objectHit2 = false; 
	bool fell = false; 

	void Start () {
		myAnimator = GetComponent<Animator>();
	}
	void Update (){
		if (objectHit1 == true && fell == true) {
			ScoreManager.playerOneScore++; 
			objectHit1 = false;
			fell = false; 
		} else if (objectHit2 == true && fell == true) {
			ScoreManager.playerTwoScore++; 
			objectHit2 = false;
			fell = false; 
		}


	}
	void OnTriggerEnter (Collider collision) {
		Debug.Log ("OnTrigger happended");
		playAnim = !playAnim;
		myAnimator.SetBool ("IsFalling", playAnim);
		fell = true; 
		GetComponent<AudioSource>().Play ();
	}
	void OnCollisionEnter (Collision collide){
		if (collide.gameObject.tag == "PlayerOne") {
			if(!objectHit1){
				objectHit1 = true; 
			}
	
		}
		else if (collide.gameObject.tag == "PlayerTwo") {
			if(!objectHit2){
				objectHit2 = true; 
			}
		}

	}
}