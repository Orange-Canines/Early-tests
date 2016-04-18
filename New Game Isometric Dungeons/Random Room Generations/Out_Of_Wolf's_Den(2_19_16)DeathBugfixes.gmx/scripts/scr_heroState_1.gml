image_xscale = 1;
set_movement_horizontal_vertical(0,0);
set_movement_gravity(0);
enable_movement_run_horizontal(1,1.5,keyRight,keyLeft);
enable_movement_run_vertical(1,1.5,keyUp,keyDown);
if hspd == 0 && vspd == 0{
    image_speed = 0;
}
move_movement_entity_hero();
// Jump off?
if   (keyJump ==1) {
        global.heroState =0 
} 
