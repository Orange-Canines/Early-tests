using UnityEngine;
using System.Collections;

public class scr_camera : MonoBehaviour {
    public GameObject player;

    // Use this for initialization
    void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        player = GameObject.FindGameObjectWithTag("Hero");
        //view_xview[0] += ((x - (view_wview/2)) - view_xview[0]) * .5;



        //  float myx = player.transform.position.x - (transform.position.x /2) ;



        // float myy = player.transform.position.y - transform.position.y / 2;
        //float myz = player.transform.position.z - transform.position.z / 2;

        //   transform.position = new Vector3(myx - 10,  20, player.transform.position.z - 20); // Camera follows the player with specified offset position
        transform.position = new Vector3(player.transform.position.x - 10, player.transform.position.y + 40, player.transform.position.z- 20 ); // Camera follows the player with specified offset position
        transform.eulerAngles = new Vector3(50, 0, 0);
    }
}
