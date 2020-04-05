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
}

if(collision) {
	if(touchEarth=false){
		success = true;
		//collided to docking station
	}
	else{
		success = false;
		//collided to earth		
	}
}