///scr_ship_move

// set the friction to 0
friction = 0;

// move towards the target if it exists
if(instance_exists(target))
{
    motion_add(point_direction(x,y,target.x,target.y),acc);
    
    // delete the target when we reach it
    if(position_meeting(x,y,target))
    {
        if(target != -1 && instance_exists(target) && target != obj_ship && target != obj_rock)
            with(target) instance_destroy();
        state = 'idle';

    }    
}

// don't go faster than the max speed
if(speed > spd)speed = spd;
