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
}
else{
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
			collision = true;
		}
		if(place_meeting(x,y,oEarth)){
			success = false;
			collision = true;
		}
	}
	else{
		//rocket collided
		if(success = true){
			room_goto(rLvEndScreen);
		}else{
			room_restart();
		}
	}
}
/*
if(place_meeting(x, y, )

if(place_meeting(x, y, oBounds)){
	oobCollision = true;	
}

if(collision or oobCollision) {
	if(!oobCollision && touchEarth=false){
		success = true;
		room_goto(rLvEndScreen);
		//collided to docking station
	}
	else{
		
		if(oobCollision){
			text = "Oh no! You've gone too far\n - we've lost contact.\nTry again?";
		} else {
			text = "Oh no! You've collided with Earth.\nTry again?";
		}
		
		with(oHelpfulAstro){
			tid = instance_create_depth(x + 70.5, y - 126, -100, oHelpBubble);
			oHelpBubble.text = other.text;
		}
		success = false;
		room_restart();
		//collided to earth		
	}
}
*/