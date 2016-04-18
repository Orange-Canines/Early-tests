// draw level... Draw the grid 
for (var yy=0; yy < height; yy++){
    for (var xx=0; xx < width; xx++){
    
        if (grid[# xx, yy] == FLOOR)
            tile_add(bg_floor,0,0,CELL_WIDTH*2, CELL_HEIGHT*2, xx*CELL_WIDTH, yy*CELL_HEIGHT,0) 
        if (grid[# xx, yy] == WALL)
            tile_add(bg_wall,0,0,CELL_WIDTH*2, CELL_HEIGHT*2, xx*CELL_WIDTH, yy*CELL_HEIGHT,0) 
        if (grid[# xx, yy] == HOUSE_FLOOR)
            tile_add(bg_house_floor,0,0,CELL_WIDTH*2, CELL_HEIGHT*2, xx*CELL_WIDTH, yy*CELL_HEIGHT,0) 
        if (grid[# xx, yy] == HOUSE_WALL)
            tile_add(bg_house_wall,0,0,CELL_WIDTH*2, CELL_HEIGHT*2, xx*CELL_WIDTH, yy*CELL_HEIGHT,0)
    }
}
