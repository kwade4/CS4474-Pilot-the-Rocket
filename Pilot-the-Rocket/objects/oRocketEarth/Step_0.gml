if(!takeoff){
	image_index = 0;		// Rocket with no flames 
	
	if (fuel_amount > 0) {
		
		// Decrease fuel amount for the hard level 
		if (global.levelDifficulty == 2 && (keyboard_check(vk_right) || keyboard_check(vk_left) 
										|| keyboard_check(vk_up) || keyboard_check(vk_down))) {
			fuel_amount -= 0.5; 
		}
	
		// Rotate right
		if (keyboard_check(vk_right)) {
			phy_rotation += 0.5; 
			image_index = 1; 
			
			movesph = 1;
		}

		// Rotate left
		if (keyboard_check(vk_left)) {
			phy_rotation -= 0.5; 
			image_index = 1; 
			movesph = -1;
		}
		if(place_meeting(x,y,oEarth) && cooldown<1){
			onEarth = true;
			movespv = 0;
			cooldown=10;
		}
		// Move up
		if (keyboard_check(vk_up)) {
			y_force = -thrust * dcos(phy_rotation);		// thrust * cos(angle)
			x_force = thrust * dsin(phy_rotation);		// thrust * sin(angle) 
			physics_apply_local_force(0, 0, x_force, y_force);
			image_index = 1;
		
			cooldown-=1;
		}
		if(point_distance(x,y,oEarth.x,oEarth.y)>160){
		//at least more than 2 room cell away from each other
		takeoff =  true;
		}
	}
	
	if(fuel_amount == 0) {
		success = false;
	}
	
	// Update the fuel gauge 
	oGameHUD.fuel_gauge.image_index = (floor(fuel_amount / 21.43)); 
	
	// Update values in the HUD 
	earth_x_velo.value = abs(phy_speed_x);
	earth_y_velo.value = abs(phy_speed_y);
	
}


else{
	if (!collision and !oobCollision) {
	image_index = 0;		// Rocket with no flames 
	
		if (fuel_amount > 0) {
		
			// Decrease fuel amount for the hard level 
			if (global.levelDifficulty == 2 && (keyboard_check(vk_right) || keyboard_check(vk_left) 
										|| keyboard_check(vk_up) || keyboard_check(vk_down))) {
				fuel_amount -= 0.5; 
			}
	
			// Rotate right
			if (keyboard_check(vk_right)) {
				phy_rotation += 0.5; 
				image_index = 1; 
			
				movesph = 1;
			}

			// Rotate left
			if (keyboard_check(vk_left)) {
				phy_rotation -= 0.5; 
				image_index = 1; 
				movesph = -1;
			}

			// Move up
			if (keyboard_check(vk_up)) {
				y_force = -thrust * dcos(phy_rotation);		// thrust * cos(angle)
				x_force = thrust * dsin(phy_rotation);		// thrust * sin(angle) 
				physics_apply_local_force(0, 0, x_force, y_force);
				image_index = 1;
			}
			// Move down
			if (keyboard_check(vk_down)) {
				y_force = thrust * dcos(phy_rotation);		// thrust * cos(angle)
				x_force = -thrust * dsin(phy_rotation);		// thrust * sin(angle) 
				physics_apply_local_force(0, 0, x_force, y_force);  
				image_index = 1; 
			}
		}
		
		if(place_meeting(x,y,oDocking)){
			success = true;
			collision = true;
		}
		if(place_meeting(x,y,oBounds)){
			success = false;
			oobCollision = true;
		}
		if(place_meeting(x,y,oEarth)){
			success = false;
			collision = true;
		}
		
		if(fuel_amount == 0) {
			success = false; 
		}
		
		// Update the fuel gauge 
		oGameHUD.fuel_gauge.image_index = (floor(fuel_amount / 21.43)); 
	
		// Update values in the HUD 
		earth_x_velo.value = abs(phy_speed_x);
		earth_y_velo.value = abs(phy_speed_y);
	}
	
	
	else{
		
		// Show mission result on HUD
		mission_success = instance_create_depth(oGameHUD.x-64, oGameHUD.y, -101, oHUDMissionStatus);
		mission_success.image_xscale = 0.9; 
		mission_success.image_yscale = 0.9; 
		
		//rocket collided
		if(success = true){
			mission_success.image_index = 1;		// display checkmark on HUD
			with(oHelpfulAstro){
				instance_create_depth(x + 150, y - 222, -100, oWinBubble);
				oWinBubble.text = "Mission Accomplished!\nLoading mission debrief...";
			}
		
			if(!alarmSet){
				alarm[0] = room_speed * 3;
				alarmSet = true;
			}

		}else{
			mission_success.image_index = 0;		// display X on HUD
			global.paused = true;
			if(oobCollision){
				text = "Oh no! You've gone too far\n - we've lost contact.\nTry again?";
			} else {
				text = "Oh no! You've collided with Earth.\nTry again?";
			}
		
			with(oHelpfulAstro){
				instance_create_depth(x + 150, y - 222, -100, oHelpBubble);
				oHelpBubble.text = other.text;
			}
		}
	}
}


