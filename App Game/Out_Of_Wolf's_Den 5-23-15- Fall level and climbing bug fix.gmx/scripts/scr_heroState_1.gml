// Climbing
image_xscale = 1;
if (place_meeting(x,y, obj_climb)){
    set_movement_horizontal_vertical(0,0);
    set_movement_gravity(0);
    enable_movement_run_horizontal(1,1.5,global.keyRight,global.keyLeft);
    enable_movement_run_vertical(1,1.5,global.keyUp,global.keyDown);
    if hspd == 0 && vspd == 0{
        image_speed = 0;
        }
    move_movement_entity_hero();
  if (global.keyJump ==1)
      global.heroState = 0
}

else {
    global.heroState = 0;
}
