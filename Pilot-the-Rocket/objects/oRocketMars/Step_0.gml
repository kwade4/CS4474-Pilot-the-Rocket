left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
take_picture = keyboard_check(vk_space);
	
var move = right - left;
	
//move horizontally
hsp = move * walksp;
	
//move vertically
vsp = vsp + grv;

//if rocket goes out of bounds, astronaut appears and says "Out of Bounds"	
if(place_meeting(x, y+vsp, oBounds))
{
	room_goto(rOutOfBounds);
}
	
if(place_meeting(x+hsp, y, oEndLevel))
{
	room_goto(r);
}
	//if player clicks jump and at (x,y+1) touches oFloorWater, character will jump
	if(place_meeting(x, y+1, oFloorWater) && jump)
	{
		vsp = jumpsp;		
	}

	//Horizontal collision
	//if player moves horizontally and at (x+speed of horizontal movement, y) touches oFloorWater, player will stop moving horizontally
	if(place_meeting(x+hsp, y, oFloorWater))
	{
		while(!place_meeting(x+sign(hsp), y, oFloorWater))
		{
			x = x + sign(hsp);		
		}
		hsp = 0;	
	}
	//otherwise, player will move horizontally
	x = x + hsp;

	//Vertical collision
	//if player moves vertically and at (x, y+speed of vertical movement) touches oFloorWater, player will stop moving vertically
	if(place_meeting(x, y+vsp, oFloorWater))
	{
		while(!place_meeting(x, y+sign(vsp), oFloorWater))
		{
			y = y + sign(vsp);		
		}
		vsp = 0;	
	}
	//otherwise, player will move vertically
	y = y + vsp;

	//Animation
	//if meeting place is not oFloorWater and the form is not 1
	if(!place_meeting(x, y+1, oFloorWater) && form != 1)
	{
		sprite_index = sprite_jumping;
		image_speed = 0;
		if(sign(vsp) > 0)
		{
			image_index = 1;
		} 
		else 
		{
			image_index = 0;
		}
	} 
	else 
	{
		image_speed = 1;
		if(hsp == 0)
		{
			sprite_index = sprite_standing;	
		} 
		else 
		{
			sprite_index = sprite_walking;
		}
	}
	if(hsp != 0)
	{
		image_xscale = sign(hsp);	
	}
}	

else 
{
	image_speed = 0;
	sprite_index = sprite_standing;
}

if(isTalking)
{
	if(form != 2)
	{
		if(!place_meeting(x, y+1, oFloorWater) && form != 1)
		{
			x = x + hsp;
			vsp = vsp + grv;
			y = y + vsp;	
		}	
	} 
	else 
	{
		if(!place_meeting(x, y+1, oFloorWater))
		{
			vsp = vsp + grv;
			y = y + vsp;
		}
	}
	
}


if place_meeting(x, y+sign(vsp), oWater2)
{
    while !place_meeting(x, y+sign(vsp), oWater2) 
	{
        y += sign(vsp);
    }
    room_goto(roomWater);
}