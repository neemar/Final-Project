using UnityEngine;
using System.Collections;

public class GameManager : MonoBehaviour {
    public static GameManager instance;  // if it refers to itself, 'anyone' can 'talk' to it
    
	public bool zoom = false;
	public bool zoom2 = false;
   


    
    // Use this for initialization
    void Start () {
		zoom = false;
		zoom2=false;
        instance = this; // THIS refers to whatever the script is on!
	}
	
	// Update is called once per frame

}
