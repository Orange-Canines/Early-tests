///Camera Shake

// NO SHAKE
if(Shake_State == -2){

view_xview[0]=x-(view_wview[0]/2);
view_yview[0]=y-(view_hview[0]/2); 
}

if(Shake_State == -1){
    
}

if (Shake_State==0) {
    view_xview[0] += (((x - (view_wview/2)) - view_xview[0]) * .5) + 40;
    view_yview[0] += (((y - (view_hview/2)) - view_yview[0]) * .5) - 20;
                    }

 if(Shake_State==1) {
        view_xview[0] += ((x - (view_wview/2)) - view_xview[0]) * .5 + random_range(-1,1);
        view_yview[0] += ((y - (view_hview/2)) - view_yview[0]) * .5 + random_range(-1,1)- 20;
                    }

 if(Shake_State==2) {
        view_xview[0] += ((x - (view_wview/2)) - view_xview[0]) * .5 + random_range(-2,2);
        view_yview[0] += ((y - (view_hview/2)) - view_yview[0]) * .5 + random_range(-2,2)- 20;
                    }

 if(Shake_State==3) {
        view_xview[0] += ((x - (view_wview/2)) - view_xview[0]) * .5 + random_range(-3,3);
        view_yview[0] += ((y - (view_hview/2)) - view_yview[0]) * .5 + random_range(-3,3)- 20;
                    }

 if(Shake_State==4) {
        view_xview[0] += ((x - (view_wview/2)) - view_xview[0]) * .5 + random_range(-4,4);
        view_yview[0] += ((y - (view_hview/2)) - view_yview[0]) * .5 + random_range(-4,4)- 20;
                    }

