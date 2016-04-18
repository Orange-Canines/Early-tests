switch (argument0){
    case 2:
        var swap = global.inventory[0];
        global.inventory[0] = global.inventory[1];
        global.inventory[1] = swap;
    break;
    case 3:
        var swap = global.inventory[0];
        global.inventory[0] = global.inventory[2];
        global.inventory[2] = swap;
    break;
}

