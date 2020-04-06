if(!resumeRoom){
	resumeRoom=true;
	room_restart();
}

image_index = 0;		// Rocket with no flames 
	
if (phy_speed == 0) {
	phy_rotation = 0; 
}
	 
else { 
	phy_rotation = (darccos(-phy_speed_y / phy_speed)) - 90;
}
	
if (fuel_amount > 0 and !rope) {
		
	// Decrease fuel amount for the hard level 
	if (global.levelDifficulty == 2 && (keyboard_check(vk_right) || keyboard_check(vk_left) 
									|| keyboard_check(vk_up) || keyboard_check(vk_down))) {
		fuel_amount -= 0.5; 
	}
		
	// Move up
	if (keyboard_check(vk_up)) {
		physics_apply_force(x, y, 0, -thrust);
	}

	// Move down
	if (keyboard_check(vk_down)) {
		image_index = 1;	
		physics_apply_force(x, y, 0, thrust);
	}
		
	// Move Right 
	if (keyboard_check(vk_right)) {						 
		physics_apply_force(x, y, thrust, 0);
		image_index = 1; 
	}
	
	// Move Left 
	if (keyboard_check(vk_left)) {
		physics_apply_force(x, y, -thrust, 0); 
	}
} else if (rope){
	physics_pause_enable(true);
	x = oSpaceStation.x + 78;
	y = oSpaceStation.y + 140;
}


// Update the fuel gauge 
oGameHUD.fuel_gauge.image_index = (floor(fuel_amount / 21.43)); 

// Update values in the HUD 
jup_x_velo.value = phy_speed_x;
jup_y_velo.value = phy_speed_y; 


//if rocket goes out of bounds, astronaut appears and says "Out of Bounds"	
if(place_meeting(x, y, oBounds)) {
	oobCollision = true; 
	success = false; 
}

// If the rocket collides with the asteroid
if(place_meeting(x, y, oAsteroid)) {
	collision = true;
	success = false;
	sprite_index = s_explode;
	audio_play_sound(snd_4, 20, false);
}

if(place_meeting(x, y, oSpaceStation)) {
	rope = true;
		if(!ropeMessage){
			with(oHelpfulAstro){
				tid = instance_create_depth(x + 70.5, y - 126, -100, oWinBubble);
				tid.text = "You've successfully docked to the\nspace station. Angle yourself\nand press space to fire a rope\nand save your comrade!";
				tid.image_xscale = 0.47;
				tid.image_yscale = 0.57;
				other.msgTid = tid;
			}
			ropeMessage = true;
		}
		
		// Move Right 
		if (keyboard_check(vk_right)) {						 
			image_angle += 5
		}
	
		// Move Left 
		if (keyboard_check(vk_left)) {
			image_angle -= 5
		}
		
		if(keyboard_check(vk_space)){
			if(!throwRope){
				tidRope=instance_create_depth(x, y, 150, oRope);
				tidRope.image_angle = image_angle;
				tidRope.image_xscale = 0.47;
				tidRope.image_yscale = 0.57
				alarm[1] = 3;
				instance_destroy(msgTid);
			}
		}

}

if(fuel_amount == 0 or collision or success or oobCollision or throwRope) { 
	physics_pause_enable(true); 
	mission_success = instance_create_depth(oGameHUD.x-32, oGameHUD.y, -101, oHUDMissionStatus);
	mission_success.image_xscale = 0.45; 
	mission_success.image_yscale = 0.45;
	
	if(success) {
		mission_success.image_index = 1;		// display checkmark on HUD
		jup_y_velo.value = 0;
		jup_x_velo.value = 0;
		global.paused = true;
		global.levels[6] = 1;
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
	
	else {
		global.paused = true;
		mission_success.image_index = 0;		// display X on HUD
		if(fuel_amount == 0){
			text = "Oh no! You've run out of\nfuel before collecing all\nthe aliens. Try again?"
		} else if collision {
			text = "Oh no! You've collided with\nan asteroid. Try again?"
		} else if throwRope {
			text = "Oh no! You had one shot,\none opportunity, but you let it slip.\nTry again?"
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

