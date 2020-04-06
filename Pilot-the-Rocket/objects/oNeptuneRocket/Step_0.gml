/// @description Insert description here
// You can write your code in this editor


key_left = keyboard_check(vk_left); //checks if virtual keyboard left is pressed
key_right = keyboard_check(vk_right);
var moveh = key_right - key_left;
hsp = moveh * mvSp;	
key_up = keyboard_check(vk_up); //checks if virtual keyboard left is pressed
key_down = keyboard_check(vk_down);
var movev = key_down - key_up;
vsp = movev * mvSp;
path_speed = moveh*2;


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
nep_x_velo.value = x;
nep_y_velo.value = y; 

/*if(place_meeting(x, y, oNeptuneRing)){
	image_index = 0;	
}
else{
	image_index = 1;	
}*/


if(global.itemsCollected = 6){
	room_goto(rLvEndScreen);	
}


if (fuel_amount == 0) {
	success = false;
	// Friendly astronaut guy
}