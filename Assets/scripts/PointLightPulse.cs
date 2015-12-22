using UnityEngine;
using System.Collections;

public class PointLightPulse : MonoBehaviour {

	// Update is called once per frame
	void Update () {
		//pulse the point light
		GetComponent<Light>().intensity = Mathf.Sin(Time.time * 2f)+1;
	}
}
