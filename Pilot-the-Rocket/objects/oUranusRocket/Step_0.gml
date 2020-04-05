if(!collision) {
	image_index=0;
	if(fuel_amount > 0){
		if(global.currentLevel==2&& (keyboard_check(vk_right) || keyboard_check(vk_left) 
										|| keyboard_check(vk_up) || keyboard_check(vk_down))) {
			fuel_amount -= 0.5; 
		}
	}
	if(keyboard_check(vk_left)){
		var hor_d = keyboard_check(vk_right) - keyboard_check(vk_left);
		hsp = hor_d * movesph;
		vsp = 0;

		x -= movesph;
		
		image_index=1;
	}
	if(keyboard_check(vk_right)){
		var hor_d = keyboard_check(vk_right) - keyboard_check(vk_left);
		hsp = hor_d * movesph;
		vsp = 0;
		x += movesph*0.3;
		image_index=1;
	}
	if(keyboard_check(vk_up)){
		var ver_d = keyboard_check(vk_up) - keyboard_check(vk_down);
		vsp = ver_d * movespv;
		hsp = 0;
		
		y -= movespv;
		image_index=1;
	}
	if(keyboard_check(vk_down)){
		var ver_d = keyboard_check(vk_up) - keyboard_check(vk_down);
		vsp = ver_d * movespv;
		hsp = 0;
		
		y += movespv;
		image_index=1;
	}
<<<<<<< Updated upstream
	
	if(place_meeting(x,y,oDiamond)){
		diamonds+=1;
		movespv += 2;
		movesph += 2;
	}
	if(place_meeting(x,y,oUranusRocks)){
		collision = true;
	}
	if(place_meeting(x,y, oUranus)){
		collision = true;
		success = true;
	}
	
=======
}

if(place_meeting(x,y,oDiamond)){
	diamonds+=1;
	movespv += 0.5;
	movesph += 0.5;
}
if(place_meeting(x,y,oUranusRocks)){
	collision = true;
	x = x+sign(movesph);
	y = y+sign(movespv);
}
if(place_meeting(x,y, oUranus)){
	collision = true;
	x = x+sign(movesph);
	success = true;
>>>>>>> Stashed changes
}

if(collision){
	instance_deactivate_object(oUranusAI);
	
	if(success==true and !reachGoalAI){
		room_goto(rLvEndScreen);
	}
	else{
		image_index=2;
		room_goto(rUranus);
		//hud fail
	}
}