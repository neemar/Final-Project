using UnityEngine;
using System.Collections;

public class GetPointSound : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if ( ObjectBreaking.girlGo == true || ObjectBreaking.boyGo == true ) {
			GetComponent<AudioSource>().Play ();
		}
	
	}
}
