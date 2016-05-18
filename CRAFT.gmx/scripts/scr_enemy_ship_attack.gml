///scr_enemy_ship_attack()

if(foe != -1 && point_distance(x,y,foe.x,foe.y) < 128)
{
    image_angle = point_direction(x,y,foe.x,foe.y);
    if(alarm[0] == -1 && weapon != -1)
    {
        var laser = instance_create(x,y,weapon);
        laser.direction = image_angle;
        laser.image_angle = image_angle;
        alarm[0] = 20;
    }
}
friction = .5;

if (instance_exists(foe) && foe != -1)
{
    direction = point_direction(x,y,foe.x,foe.y);
    
    if (distance_to_point(foe.x,foe.y) > 96)  
        state = 'chase';
}
