using UnityEngine;
using System.Collections;

public class elevatyor : MonoBehaviour {
	public Transform ela;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		ela.transform.position += new Vector3 (0,1,0) * Time.deltaTime;
	}
}
