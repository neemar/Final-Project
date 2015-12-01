using UnityEngine;
using System.Collections;

public class balllllLsss : MonoBehaviour {
	public Transform ball1,ball2;
	// Use this for initialization
	void Start () {
		StartCoroutine(BallsSwap());
	}
	
	// Update is called once per frame


	IEnumerator BallsSwap(){
		while (true){
		Vector3  balls1= ball1.position;
		Vector3  balls2= ball2.position;

			bool didPlay = false;
		float t =0f;
			while (t<1f){
		t += Time.deltaTime;
		ball1.position = Vector3.Lerp (balls1, balls2, t);
		ball2.position = Vector3.Lerp (balls2, balls1, t);
				if (t >0.4f && t < 0.5f && didPlay==false) {

					GetComponent<AudioSource>().Play();
					didPlay = true;
		
			
				}}
				    yield return 0;
		}
	}
}
