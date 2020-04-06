if(!resumeRoom){
	resumeRoom=true;
	room_restart();
}

if (global.fuel<=0&&global.levelDifficulty==2){room_goto(rLvEndScreen);
	}
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
		global.fuel=global.fuel-0.03;
		hsp = hor_d * movesph;
		vsp = 0;

		x -= movesph;
		
		image_index=1;
	}
	if(keyboard_check(vk_right)){
		var hor_d = keyboard_check(vk_right) - keyboard_check(vk_left);
		global.fuel=global.fuel-0.03;
		hsp = hor_d * movesph;
		vsp = 0;
		x += movesph;
		image_index=1;
	}
	if(keyboard_check(vk_up)){
		var ver_d = keyboard_check(vk_up) - keyboard_check(vk_down);
		global.fuel=global.fuel-0.03;
		vsp = ver_d * movespv;
		hsp = 0;
		
		y -= movespv;
		image_index=1;
	}
	if(keyboard_check(vk_down)){
		var ver_d = keyboard_check(vk_up) - keyboard_check(vk_down);
		global.fuel=global.fuel-0.03;
		vsp = ver_d * movespv;
		hsp = 0;
		
		y += movespv;
		image_index=1;
	}
	
	if(place_meeting(x,y,oDiamond)){
		diamonds+=1;
		movespv += 0.1;
		movesph += 0.1;
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
	}
	if(place_meeting(x, y, oBounds)){
		oobCollision = true;	
	}
	if (vsp==0 && hsp!=0){
		if(hsp<0){global.x_velocity=hsp*-1;}
		else{global.x_velocity=hsp;}}
	if (hsp==0 && vsp!=0){
		if(vsp<0){global.y_velocity=vsp*-1;}
		else{global.y_velocity=vsp;}}
	if keyboard_check(vk_nokey){
		global.x_velocity=0;
		global.y_velocity=0;
		}
	
}

if(collision or aiWins or oobCollision){
	instance_deactivate_object(oUranusAI);
		
	if(success==true and !aiWins){
		global.status=1; 
		global.statusVisible=1;
		global.paused = true;
		with(oHelpfulAstro){
			tid = instance_create_depth(x + 70.5, y - 126, -100, oWinBubble);
			tid.text = "Mission Accomplished!\nLoading mission debrief...";
			tid.image_xscale = 0.47;
			tid.image_yscale = 0.57;
		}
		
		if(!alarmSet){
			alarm[0] = room_speed * 3;
			alarmSet = true;
		}	
	}
	else{
		global.status=0; 
		global.statusVisible=1;
		image_index=2;

		global.paused = true;
		//mission_success.image_index = 0;		// display X on HUD
		if(fuel_amount == 0){
			text = "Oh no! You've run out of\nfuel before collecing all\nthe aliens. Try again?"
		} else if collision {
			text = "Oh no! You've collided with\nan asteroid. Try again?"	
		} else if aiWins {
			text = "Oh no! The other ship beat you.\nTry again?"
		} else {
			text = "Oh no! You've gone too far\n - we've lost contact.\nTry again?"	
		}
		with(oHelpfulAstro){
			tid = instance_create_depth(x + 70.5, y - 126, -100, oHelpBubble);
			tid.image_xscale = 0.47;
			tid.image_yscale = 0.57;
			oHelpBubble.text = other.text;
		}
	}
}