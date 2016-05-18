///scr_enemy_ship_chase

// Set the friction
friction = 0;

// move towards the target if it exists
if(instance_exists(foe))
{
    // Attack the foe when we reach it 
    if (distance_to_point(foe.x,foe.y) <= 64)
        state = 'attack';
    else
        motion_add(point_direction(x,y,foe.x,foe.y), acc);
}

// Dont go to fast
if(speed > spd) speed = spd;
