///scr_move_view()

var right = keyboard_check(vk_right) || keyboard_check(ord('D')) || mouse_x >= ((view_xview[0] + view_wview[0]) - 10);
var left  = keyboard_check(vk_left)  || keyboard_check(ord('A')) || mouse_x <= view_xview[0] + 10;
var up    = keyboard_check(vk_up)    || keyboard_check(ord('W')) || mouse_y <= view_yview[0] + 10;
var down  = keyboard_check(vk_down)  || keyboard_check(ord('S')) || mouse_y >= ((view_yview[0] + view_hview[0]) - 10);


// Move  the view according to the input

if(right)
    view_xview[0] += 7;
if(left)
    view_xview[0] -= 7;
if(up)
    view_yview[0] -= 7;
if(down)
    view_yview[0] += 7;
