///enable_movement_jump(height, input, release_input)
/*
    Call this function to enable platform jumping
    on a movement entity.
*/

var height = argument[0]; // The jump height (Should be positive)
var input = argument[1]; // The input for jumping
var release_input = argument[2]; // The input for jump height control (release)

// Check for jump
if global.heroState = 0{
    if (place_meeting(x, y+1, collision_object)) {
        if (input) {
            vspd = -height;
        }
    } else {
        if (release_input && vspd <= -height/3) {
            vspd = -height/3;
        }
    }
}
if global.heroState = 3{
    if (place_meeting(x, y-1, collision_object)) {
        if (input) {
            vspd = -height;
        }
    } else {
        if (release_input && vspd <= -height/3) {
            vspd = -height/3;
        }
    }
}
