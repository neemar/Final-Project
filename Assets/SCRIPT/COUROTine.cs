using UnityEngine;
using System.Collections;

public class COUROTine : MonoBehaviour {

	// Use this for initialization
	void Start () {
		StartCoroutine(mFCo());
	}
	


	IEnumerator mFCo (){
		Debug.Log ("s");
		// YIELD TELLS UNITY TO PAUSE IN FUNCTION ------- NEED TO DOUBLE UP IF U WANNA extend wait
		yield return 0;
		yield return 0;
		Debug.Log ("why ws");
		yield return 0;yield return 0;yield return 0;yield return 0;
		Debug.Log ("sdwafds");
		yield return new WaitForSeconds(5f); //waits for that many seConds
		Debug.Log ("ccccccccgrats");
		


	}
}
