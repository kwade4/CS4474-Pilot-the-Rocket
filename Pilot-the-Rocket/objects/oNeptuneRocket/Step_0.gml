/// @description Insert description here
// You can write your code in this editor
if(!resumeRoom){
	resumeRoom=true;
	room_restart();
}
if (fuel_amount > 0) { 
	key_left = keyboard_check(vk_left); //checks if virtual keyboard left is pressed
	key_right = keyboard_check(vk_right);
	var moveh = key_right - key_left;
	hsp = moveh * mvSp;	
	key_up = keyboard_check(vk_up); //checks if virtual keyboard left is pressed
	key_down = keyboard_check(vk_down);
	var movev = key_down - key_up;
	vsp = movev * mvSp;
	path_speed = moveh*2;
}



if (fuel_amount > 0) {
	// Decrease fuel amount for the hard level 
	if (global.levelDifficulty == 2 && (keyboard_check(vk_right) || keyboard_check(vk_left) 
		|| keyboard_check(vk_up) || keyboard_check(vk_down))) {
			fuel_amount -= 0.5; 
	}
}

// Update the fuel gauge 
oGameHUD.fuel_gauge.image_index = (floor(fuel_amount / 21.43)); 

// Update values in the HUD 
nep_x_velo.value = abs(0.25* hsp * x);
nep_y_velo.value = abs(0.25 * vsp * y); 

/*if(place_meeting(x, y, oNeptuneRing)){
	image_index = 0;	
}
else{
	image_index = 1;	
}*/


if(global.itemsCollected = 6){
	mission_success = instance_create_depth(oGameHUD.x-64, oGameHUD.y, -101, oHUDMissionStatus);
	mission_success.image_xscale = 0.9; 
	mission_success.image_yscale = 0.9;
	mission_success.image_index = 1;		// display checkmark on HUD

	with(oHelpfulAstro){
		instance_create_depth(x + 150, y - 222, -100, oWinBubble);
		oWinBubble.text = "Mission Accomplished!\nLoading mission debrief...";
	}
		
	if(!alarmSet){
		alarm[0] = room_speed * 3;
		alarmSet = true;
	}
}


if (fuel_amount == 0) {
	mission_success = instance_create_depth(oGameHUD.x-64, oGameHUD.y, -101, oHUDMissionStatus);
	mission_success.image_xscale = 0.9; 
	mission_success.image_yscale = 0.9; 
	success = false; 
	
	if(success) {
		mission_success.image_index = 1;		// display checkmark on HUD
	}
	
	else {
		mission_success.image_index = 0;		// display X on HUD
		hsp = 0;
		vsp = 0; 
		path_speed = 0; 	
	}
}