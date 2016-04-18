///Run Too ( speed, obj1, obj2)

speeds =  argument [0]; 
Object1 =argument [1] ;
Object2 = argument [2] ; 

if instance_exists (obj_hero) 
angle  = point_direction(Object1.x, Object1.y ,Object2.x, Object2.y);   
set_movement_direction_speed(angle + 180,speeds )
move_movement_entity(); 
