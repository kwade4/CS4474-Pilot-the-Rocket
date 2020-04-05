globalvar uranusGrid;
uranusGrid = mp_grid_create(0,0, room_width, room_height, 32, 32);
mp_grid_add_instances(uranusGrid, oUranusRocks, false);