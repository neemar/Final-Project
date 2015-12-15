using UnityEngine;
using System.Collections;

public class destroyAnim : MonoBehaviour {

	Animator myAnimator;
	bool playAnim = false; 

	void Start () {
		myAnimator = GetComponent<Animator>();
	}
	
	void OnTriggerEnter (Collider collision) {
		Debug.Log ("OnTrigger happended");
		playAnim = !playAnim;
		myAnimator.SetBool ("IsFalling", playAnim);
		GetComponent<AudioSource>().Play ();
	}
}