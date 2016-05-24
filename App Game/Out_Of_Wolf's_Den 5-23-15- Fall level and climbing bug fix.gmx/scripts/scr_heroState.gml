///Hero State
/// Key Presses //
    global.keyLeft = keyboard_check(ord("A")) or   global.left_key_vert;
    global.keyRight = keyboard_check(ord("D")) or   global.right_key_vert;
    global.keyUp = keyboard_check(ord("W")) or   global.up_key_vert;
    global.keyDown = keyboard_check(ord("S")) or   global.down_key_vert;
    
    
    
    
    /// this has an error with virtual keys? 
    global.keyJump = keyboard_check_pressed(vk_space) or   global.jump_key_vert
    global.keyJumpR = keyboard_check_released(vk_space)or   global.jumpr_key_vert;
    
    
    global.keyRun = keyboard_check(vk_rcontrol) or global.ability1_key_vert;
    global.keyRunR = keyboard_check_released(vk_rcontrol) or global.ability1_key_vert;
    global.keyFlip = keyboard_check_pressed(vk_ralt) or  global.ability2_key_vert;
    
// Running   
if(global.heroState = 0){
    scr_heroState_0();
}

// Climbing
if global.heroState = 1{
    scr_heroState_1();
}

// Dead
if global.heroState = 2{
    scr_heroState_2();
}

// Anti-Gravity
if(global.heroState = 3){
    scr_heroState_3();
}
// Charge State
if global.heroState = 4{
    scr_heroState_4();
}


