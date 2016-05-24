///scr_obj_shake(x,y,shake amount)
orig_x = argument[0];
orig_y = argument[1];
shake  = argument[2];

orig_x += irandom_range(-shake,shake);
orig_y += irandom_range(-shake,shake);
