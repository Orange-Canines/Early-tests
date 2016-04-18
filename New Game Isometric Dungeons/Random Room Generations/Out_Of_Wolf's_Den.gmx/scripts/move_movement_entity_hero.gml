///move_movement_entity()
/*
    This function updates the position of the movement entity
    according to its horizontal speed and vertical speed.
    This function should be called at the end of the STEP EVENT for each
    object you want using the movement functions
*/
// Regular Gravity

// Air jump reset
if global.heroState = 0{
    if (place_meeting(x, y+1, collision_object)) {
        air_jump = 1;
    }
    
    // Apply gravity
    if (!place_meeting(x, y+1, collision_object)){
        vspd += grav;
    }
    
    // Apply friction
    if (place_meeting(x, y+1, collision_object)) {
        if (horizontal_move_input == false) {
            hspd = approach(hspd, 0, fric);
        }
    }
}

// Anti Gravity 
if global.heroState = 3{
    if (place_meeting(x, y-1, collision_object)) {
        air_jump = 1;
    }
    
    // Apply gravity
    if (!place_meeting(x, y-1, collision_object)){
        vspd -= grav;
    }
    
    // Apply friction
    if (place_meeting(x, y-1, collision_object)) {
        if (horizontal_move_input == false) {
            hspd = approach(hspd, 0, fric);
        }
    }
}

// Horizontal check
if (place_meeting(x+hspd, y, collision_object)) {
    while (!place_meeting(x+sign(hspd), y, collision_object)) {
        x+=sign(hspd);
    }
    
    // Update the hspeed
    hspd = -(hspd)*bounce;
    
    // Stop bounce at low values
    if (abs(hspd) < 1) hspd = 0;
}
x += hspd;

// Vertical collision check
if (place_meeting(x, y+vspd, collision_object)) {
    while (!place_meeting(x, y+sign(vspd), collision_object)) {
        y+=sign(vspd);
    }
    vspd = -(vspd)*bounce;
    
    // Stop bounce at low values
    if (abs(vspd) < 1) vspd = 0;
    y=round(y);
}
y += vspd;

// Air resistance
if (horizontal_move_input == false) {
    hspd = approach(hspd, 0, air_res);
}
if (vertical_move_input == false && grav == 0) {
    vspd = approach(vspd, 0, air_res);
}

