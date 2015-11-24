using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class uhh : MonoBehaviour {
	
	public Text textUI;
	public Text textUI2;

	public GameObject mhm;
	void Start () {

		mhm.SetActive(false);
	}  

	void OnTriggerEnter() { 
		
		mhm.SetActive(true);
		
		
		
		
		
	}
	void OnTriggerStay() { 
		if (!GameManager.instance.zoom){
		textUI.text = "(T) CUP";
		textUI2.text = "(T) CUP";
		}
		if (Input.GetKeyDown (KeyCode.T)){
			Camera.main.fieldOfView = 40;
			GameManager.instance.zoom= true;
			textUI.text = "? TOPPLE \n ? DRINK";
			textUI2.text = "? TOPPLE \n ? DRINK";
		}
		
	}
	
	void OnTriggerExit () {
		
		GameManager.instance.zoom= false;
			mhm.SetActive(false);
		Camera.main.fieldOfView = 66;
}

}