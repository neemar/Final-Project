using UnityEngine;
using System.Collections;
using UnityEngine.UI; //using UI elements

public class destroy : MonoBehaviour {

	//floor
	void OnCollisionEnter (Collision collision) {
		if (collision.gameObject.tag == "Breakable" || collision.gameObject.tag == "Flying") {
			Destroy (collision.gameObject);
			GetComponent<AudioSource>().Play ();


		}
	}
}
