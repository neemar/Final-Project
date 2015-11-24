using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class raycas : MonoBehaviour {
	Camera cam;
	public Text textUI;
	public Text textUI2;
	public GameObject mhm;
	public Transform cup;
	public Transform player;
	// Use this for initialization
	void Start () {
		cam = GetComponent<Camera>();
	 mhm.SetActive(false);
	}
	
	// Update is called once per frame
	void Update () {

			Ray ray = cam.ScreenPointToRay(new Vector3(300, 200, 0));
		Debug.DrawRay(ray.origin, ray.direction * 20f, Color.yellow);
		RaycastHit RayHitInfo = new RaycastHit();
		if ( Physics.Raycast (ray, out RayHitInfo, 20f ) ) {
			if (RayHitInfo.collider.tag == "cup"){
				Debug.Log ("CUP");
			
				mhm.SetActive(true);
				if (!GameManager.instance.zoom){
					textUI.text = "(T) CUP";
					textUI2.text = "(T) CUP";
				
				if (Input.GetKeyDown (KeyCode.T)){
					Camera.main.fieldOfView = 40;
					GameManager.instance.zoom= true;
					textUI.text = "? TOPPLE \n ? DRINK";
					textUI2.text = "? TOPPLE \n ? DRINK";
					}}

		}

		
			}
		if (Vector3.Distance(player.position, cup.position)>25f){
			GameManager.instance.zoom= false;
			mhm.SetActive(false);
		}}


	}

