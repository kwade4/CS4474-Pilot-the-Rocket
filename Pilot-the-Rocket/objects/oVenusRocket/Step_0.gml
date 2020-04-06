if(!resumeRoom){
	resumeRoom=true;
	room_restart();
}

if (!collision) {
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
		}

		// Rotate left
		if (keyboard_check(vk_left)) {
			phy_rotation -= 0.5; 
			image_index = 1; 
		}

		// Move up
		if (keyboard_check(vk_up)) {
			physics_apply_local_force(0, 0, 0, -thrust);
			image_index = 1; 
		}


		// Move down
		if (keyboard_check(vk_down)) {
			physics_apply_local_force(0, 0, 0, thrust);
			image_index = 1; 
		}
	}
}

// Update the fuel gauge 
oGameHUD.fuel_gauge.image_index = (floor(fuel_amount / 21.43)); 

// Update values in the HUD 
venus_x_velo.value = phy_speed_x;
venus_y_velo.value = phy_speed_y; 
venus_altitude.value = abs(oVenusSurface.phy_position_y - 208.62 - phy_position_y);

if(collision) {
	mission_success = instance_create_depth(oGameHUD.x-64, oGameHUD.y, -101, oHUDMissionStatus);
	mission_success.image_xscale = 0.9; 
	mission_success.image_yscale = 0.9; 
	level_finished = true; 
	
	venus_altitude.value = 0;
	
	if(success) {
		mission_success.image_index = 1;		// display checkmark on HUD
		venus_y_velo.value = 0;
		venus_x_velo.value = 0;
		global.levels[4] = 1;
		with(oHelpfulAstro){
			instance_create_depth(x + 150, y - 222, -100, oWinBubble);
			oWinBubble.text = "Mission Accomplished!\nLoading mission debrief...";
		}
		
		if(!alarmSet){
			alarm[0] = room_speed * 3;
			alarmSet = true;
		}
		
	}
	
	else {
		mission_success.image_index = 0;		// display X on HUD
	} 
}

 

