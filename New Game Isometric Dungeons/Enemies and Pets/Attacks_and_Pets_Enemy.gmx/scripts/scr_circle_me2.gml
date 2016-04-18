///Run Away ( speed, obj1, angle, Radius) Speed 1.4 0rbit_angle = 0 orbit_radius = 15;
//

speeds =  argument [0]; 
object =argument [1] ;

orbit_radius = argument [2] ;
//orbit_angle = 0;
//orbit_radius = 15;


// this works but no collision. 
orbit_angle += 1.5;
x1 = object.x + orbit_radius * cos(orbit_angle * pi / 180);
y1 = object.y - orbit_radius * sin(orbit_angle * pi / 180);



angle  = point_direction(x, y ,x1, y1);   
set_movement_direction_speed(angle,speeds )
move_movement_entity();
