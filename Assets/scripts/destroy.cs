using UnityEngine;
using System.Collections;
using UnityEngine.UI; //using UI elements

public class destroy : MonoBehaviour {

	void OnCollisionEnter (Collision collision) {
		if (collision.gameObject.tag == "Breakable") {
			Destroy (collision.gameObject);
			GetComponent<AudioSource>().Play ();


		}
	}
}
