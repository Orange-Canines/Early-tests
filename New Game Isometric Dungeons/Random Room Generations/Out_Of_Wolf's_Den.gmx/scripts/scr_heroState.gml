// Key Presses 
if global.heroState != 4{

    keyLeft = keyboard_check(ord("A"));
    keyRight = keyboard_check(ord("D"));
    keyUp = keyboard_check(ord("W"));
    keyDown = keyboard_check(ord("S"));
    keyJump = keyboard_check_pressed(vk_space);
    keyJumpR = keyboard_check_released(vk_space);
    keyRun = keyboard_check(vk_rcontrol);
    keyRunR = keyboard_check_released(vk_rcontrol);
    keyFlip = keyboard_check_pressed(vk_ralt);
    }
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


