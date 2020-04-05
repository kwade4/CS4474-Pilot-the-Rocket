/*key_left = keyboard_check(vk_left); //checks if virtual keyboard left is pressed
key_right = keyboard_check(vk_right);
var moveh = key_right - key_left;
hsp = moveh * mvSp;	
x = x + hsp;
key_up = keyboard_check(vk_up); //checks if virtual keyboard left is pressed
key_down = keyboard_check(vk_down);
var movev = key_down - key_up;
vsp = movev * mvSp;
y = y + vsp;

x = clamp(x, 50, room_width+10); 
y = clamp(y, -20, room_height - 70);

if(x>room_width){
	room_goto(rLvEndScreen);	
}

if(global.SaturnHealth < 0){
	//level failed condtion met
	room_goto(rLvInstructions);
}

if(place_meeting(x,y,oSaturnRing1) or place_meeting(x,y,oSaturnRing2) or place_meeting(x,y,oSaturnRing3) or place_meeting(x,y,oSaturnRing4)){
	sprite_index = s_hotRocket;
}
else{
	sprite_index = s_rocket;
}
*/ 


if (!collision) {
	image_index = 0;		// Rocket with no flames 
	
	if (fuel_amount > 0) {
		
		// Decrease fuel amount for the hard level 
		if (global.levelDifficulty == 2 && (keyboard_check(vk_right) || keyboard_check(vk_left) 
										|| keyboard_check(vk_up) || keyboard_check(vk_down))) {
			fuel_amount -= 0.5; 
		}


		// Move up
		if (keyboard_check(vk_up)) {
			phy_rotation += 0.5; 
			image_index = 1; 
			y_force = -thrust; 
			x_force = 0; 
			physics_apply_local_force(0, 0, x_force, y_force);
		}

		// Move down
		if (keyboard_check(vk_down)) {
			phy_rotation -= 0.5; 
			image_index = 1;
			y_force = thrust; 
			x_force = 0;	
			physics_apply_local_force(0, 0, x_force, y_force);
		}

		// Move Right 
		if (keyboard_check(vk_right)) {
			y_force = 0;		
			x_force = -thrust;							 
			physics_apply_local_force(0, 0, x_force, y_force);
			image_index = 1; 
		}


		// Move Left
		if (keyboard_check(vk_left)) {
			y_force = 0;		
			x_force = thrust;							
			physics_apply_local_force(0, 0, x_force, y_force);  
			image_index = 1; 
		}
	}
}

// Update the fuel gauge 
oGameHUD.fuel_gauge.image_index = (floor(fuel_amount / 21.43)); 

// Update values in the HUD 
saturn_x_velo.value = phy_speed_x;
saturn_y_velo.value = phy_speed_y; 

if(fuel_amount == 0 || global.SaturnHealth < 0) {
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
	} 
}
