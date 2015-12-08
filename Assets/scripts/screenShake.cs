using UnityEngine;
using System.Collections;

public class screenShake : MonoBehaviour {
	public Camera girlCamera; 
	Vector3 cameraStartBoy;
	Vector3 cameraStartGirl;
	void Start(){
		cameraStartBoy = Camera.main.transform.position; 
		cameraStartGirl = girlCamera.transform.position; 
	}
	void Update(){
		if (ObjectBreaking.girlGo) {
			int player = 0; 
			StartCoroutine (shakeMe(player));
			ObjectBreaking.girlGo = false; 
		} else if (ObjectBreaking.boyGo) {
			int player = 1;
			StartCoroutine (shakeMe (player)); 
			ObjectBreaking.boyGo = false; 
		}


	}
	IEnumerator shakeMe(int player){
		float t = 1f; 
		while (t > 0f) {
			//to shake the screen, grab the camera object and shake it a lot
			//sine wave
			t -= Time.deltaTime; //each frame make t smaller
			//to shake it left and right grab whatever the right or left direction of the camera is and then apply the sine wave
			if (player == 1) {
				Vector3 shakeVector = Camera.main.transform.right * Mathf.Sin (Time.time * 50f); 
				//make the up one a different frequency, otherwise it will look diagonal and coordinated
				Vector3 shakeUpVector = Camera.main.transform.up * Mathf.Sin (Time.time * 47f); 
				Camera.main.transform.position = cameraStartBoy + shakeVector + shakeUpVector * t * 10f; 
			} else if (player == 0) {
				Vector3 shakeVector = girlCamera.transform.right * Mathf.Sin (Time.time * 50f); 
				Vector3 shakeUp = girlCamera.transform.right * Mathf.Sin (Time.time * 47f); 
				girlCamera.transform.position = cameraStartGirl + shakeVector + shakeUp * t * 10f; 
			}
			yield return 0; 
		}
	}

}
