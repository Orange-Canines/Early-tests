///Charge me Captain!  
if (Charging <= maxcharge){
    Charging += .5; 
    Charged = 0;
    hspd = 0;
    vspd = 0;
    room_speed = 60; 
}          
//Charged move OVER HEAT ! 
if (Charging > maxcharge){ 
    
    Charging += .5;
    myRunSpeed = 4.5;
    Charged = 1;
    myjumpheight = 10;
    room_speed = 55; 
    if tmp == 0{
        set_movement_gravity(.3);
        enable_movement_platform_actions(.25, myRunSpeed, myjumpheight, keyRight, keyLeft, keyJump, keyJump);
    }
    else if tmp == 3{
        set_movement_gravity(-.3);
        enable_movement_platform_actions(.25, myRunSpeed, -myjumpheight, keyRight, keyLeft, keyJump, keyJump);
    }
    move_movement_entity();
    if(alarm[1] == -1)
        alarm[1] = 100;      
}

if (Charged == 0){
    myRunSpeed = 1.5
    myjumpheight = 6
    room_speed = 60;
}
 
 
