globalvar uranusGrid;
uranusGrid = mp_grid_create(0,0, room_width, room_height, room_width/64, room_height/64);
mp_grid_add_instances(uranusGrid, oUranusRocks, true);