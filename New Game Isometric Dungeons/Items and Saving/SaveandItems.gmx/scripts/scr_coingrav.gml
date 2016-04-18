if (vsp < 10) vsp += grav;

if (place_meeting(x,y+vsp,obj_wall))
{
    while(!place_meeting(x,y+sign(vsp),obj_wall))
    {
        y += sign(vsp);
    }
    vsp = 0;
    speed = 0;
    speed = speed/2;
    if (speed < 1) speed = 0;
}
y += vsp;

