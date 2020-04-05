globalvar uranusGrid;
uranusGrid = mp_grid_create(0,0, room_width, room_height, room_width/40, room_height/40);
mp_grid_add_instances(uranusGrid, oUranusRocks, true);