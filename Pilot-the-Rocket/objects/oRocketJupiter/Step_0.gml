hsp = 0;
vsp = 0;
movesph = 1;
movespv = 0;
sprite_index = s_rocketright;

//move right
if (keyboard_check(vk_right))
{
	movesph = 4;
	movespv = 0;
	left = keyboard_check(vk_left);
	right = keyboard_check(vk_right);
	
	//move horizontally
	var move_h = right - left;
	hsp = move_h * movesph;
	vsp = 0;
	sprite_index = s_rocketright;
}

//move left
if (keyboard_check(vk_left))
{
	movesph = -4;
	movespv = 0;
	left = keyboard_check(vk_left);
	right = keyboard_check(vk_right);
	
	//move horizontally
	var move_h = right - left;
	hsp = move_h * movesph;
	vsp = 0;
	sprite_index = s_rocketleft;
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
	sprite_index = s_rocketup;
}

//move down
if (keyboard_check(vk_down))
{
	movespv = 4;
	movesph = 0;
	up = keyboard_check(vk_up);
	down = keyboard_check(vk_down);

	//move vertically
	var move_v = up - down;
	vsp = move_v * movespv;
	hsp = 0;
	sprite_index = s_rocketdown;
}

//if rocket goes out of bounds, astronaut appears and says "Out of Bounds"	
if(place_meeting(x, y+movespv, oBounds))
{
	room_goto(rJupiter);
}
	
if(place_meeting(x+movesph, y, oSpaceStation))
{
	rope = true;
}

//Horizontal collision
//if rocket moves horizontally and at (x+speed of horizontal movement, y) touches oAsteroid, player will stop moving horizontally
if(place_meeting(x+movesph, y, oAsteroid))
{
	while(!place_meeting(x+sign(movesph), y, oAsteroid))
	{
		x = x + sign(movesph);		
	}
	room_goto(rJupiter);	
}
//otherwise, rocket will move horizontally
x = x + movesph;

//Vertical collision
//if player moves vertically and at (x, y+speed of vertical movement) touches oAsteroid, player will stop moving vertically
if(place_meeting(x, y+movespv, oAsteroid))
{
	while(!place_meeting(x, y+sign(movespv), oAsteroid))
	{
		y = y + sign(movespv);		
	}
	room_goto(rJupiter);		
}
//otherwise, player will move vertically
y = y + movespv;

