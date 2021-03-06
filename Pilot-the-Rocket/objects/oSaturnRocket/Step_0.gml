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
			fuel_amount -= 0.25; 
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
	}
}

// Update the health bar 
if(global.SaturnHealth < 1) {
	oHealthBar.image_index = 6;			// Empty health bar  
}
else if (global.SaturnHealth < 2) {
	oHealthBar.image_index = 5;			// Health bar with 1 bar 
} 
else if (global.SaturnHealth < 3) {
	oHealthBar.image_index = 4;			// Health bar with 2 bars 
} 
else if (global.SaturnHealth < 4) {
	oHealthBar.image_index = 3;			// Health bar with 3 bars 
} 
else if (global.SaturnHealth < 5) {
	oHealthBar.image_index = 2;			// Health bar with 4 bars 
}
else if (global.SaturnHealth < 6) {
	oHealthBar.image_index = 1;			// Health bar with 5 bars 
}
else {
	oHealthBar.image_index = 0;			// Full health bar 
}

// Update the fuel gauge 
oGameHUD.fuel_gauge.image_index = (floor(fuel_amount / 21.43)); 

// Update values in the HUD 
saturn_x_velo.value = phy_speed_x;
saturn_y_velo.value = phy_speed_y; 

// If there is a collision 
if(place_meeting(x,y,oSaturnRing1) or place_meeting(x,y,oSaturnRing2) or 
	place_meeting(x,y,oSaturnRing3) or place_meeting(x,y,oSaturnRing4)){
	audio_play_sound(snd_5,11,false);
	sprite_index = s_hotRocket;
}

else{
	sprite_index = s_rocket;
}


if(fuel_amount == 0 or global.SaturnHealth < 0) {
	mission_success = instance_create_depth(oGameHUD.x-64, oGameHUD.y, -101, oHUDMissionStatus);
	mission_success.image_xscale = 0.9; 
	mission_success.image_yscale = 0.9; 
	success = false; 
	
	if(success) {
		mission_success.image_index = 1;		// display checkmark on HUD
		saturn_y_velo.value = 0;
		saturn_x_velo.value = 0; 
	}
	
	else {
		mission_success.image_index = 0;		// display X on HUD
		if(!audio_is_playing(snd_4) and boom = 0){
			audio_play_sound(snd_4, 1000, false);
			boom += 1;
		}
		sprite_index = s_explode;
		physics_pause_enable(true);
		with(oHelpfulAstro){
			instance_create_depth(x + 150, y - 222, -100, oHelpBubble);
			oHelpBubble.text = "Oh no! The rings of Saturn are hot.\nRemember to avoid them.\nTry again?!";
		}
	} 
}


if(x>room_width or y > room_height or y < 0){
	mission_success = instance_create_depth(oGameHUD.x-64, oGameHUD.y, -101, oHUDMissionStatus);
	mission_success.image_index = 1;		// display checkmark on HUD
	saturn_y_velo.value = 0;
	saturn_x_velo.value = 0; 
	mission_success.image_xscale = 0.9; 
	mission_success.image_yscale = 0.9; 
	global.levels[7] = 1;
	with(oHelpfulAstro){
		instance_create_depth(x + 150, y - 222, -100, oWinBubble);
		oWinBubble.text = "Mission Accomplished!\nLoading mission debrief...";
	}
		
	if(!alarmSet){
		alarm[0] = room_speed * 3;
		alarmSet = true;
	}
}

if(global.SaturnHealth < 0){
	//level failed condtion met
	//room_goto(rLvInstructions);
}