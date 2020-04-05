/// @description Insert description here
// You can write your code in this editor
hsp = 0;
vsp = 0;
movesph = 0;
movespv = 0;

dir = 0;

if(keyboard_check(vk_right)){
	movesph = 4;
	movespv = 0;
	left = keyboard_check(vk_left);
	right = keyboard_check(vk_right);
	
	//move horizontally
	var move_h = right - left;
	hsp = move_h * movesph;
	vsp = 0;
	x = x+movesph;
	dir = 90;
	
	image_angle = -90;
}
if(keyboard_check(vk_left)){
	movesph = -4;
	movespv = 0;
	left = keyboard_check(vk_left);
	right = keyboard_check(vk_right);
	
	//move horizontally
	var move_h = right - left;
	hsp = move_h * movesph;
	vsp = 0;
	x = x+movesph;
	
	image_angle = 90;
}
//move up
if (keyboard_check(vk_up))
{
	movespv = -4;
	movesph = 0;
	up = keyboard_check(vk_up);
	down = keyboard_check(vk_down);

	//move vertically
	var move_v = up - down;
	vsp = move_v * movespv;
	hsp = 0;
	y = y+movespv;
	
	image_angle=0;
}
if(keyboard_check(vk_down)){
	movespv = 4;
	movesph = 0;
	up = keyboard_check(vk_up);
	down = keyboard_check(vk_down);

	//move vertically
	var move_v = up - down;
	vsp = move_v * movespv;
	hsp = 0;
	y = y+movespv;
	
	image_angle=180;
}

if(place_meeting(x,y,oEarthOrbit)){
	inorbit=1;
}

if(place_meeting(x, y, oDocking) and inorbit==1){
	room_goto(rLvEndScreen);
}

if(place_meeting(x, y, oEarth))
{
	instance_create_depth(x, y, 0, oBoom);
	instance_destroy(oEarthRocket);
}