using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Points : MonoBehaviour {

    private int point;
    public Text points;

	// Use this for initialization
	void Start () {
        point = 0;
        points.text = point.ToString();
	}
	
	// Update is called once per frame
	void Update () {
        point++;
        points.text = point.ToString();
    }
}
