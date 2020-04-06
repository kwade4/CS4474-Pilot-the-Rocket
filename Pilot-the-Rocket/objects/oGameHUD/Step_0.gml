if (global.currentLevel == 2 or global.currentLevel == 4 or global.currentLevel == 5) {
	
	
	// Move the fuel gauge with the rocket 
	fuel_gauge.x = x + 104; 
	fuel_gauge.y = y + 16; 


	// Move the mission objective box with the rocket 
	mission_objective.x = x - 32; 
	mission_objective.y = y; 
	
	if (global.currentLevel == 2) {
		// Move the x-velo with the rocket 
		merc_x_velo.x = x + (156 - 288);
		merc_x_velo.y = y + (375 - 357); 
	
		// Move the y-velo with the rocket 
		merc_y_velo.x = x + (360 - 288); 
		merc_y_velo.y = y + (375 - 357); 
	}
	
	else if (global.currentLevel == 4) {
		// Move the x-velo with the rocket 
		mars_x_velo.x = x + (156 - 288);
		mars_x_velo.y = y + (375 - 357); 
	
		// Move the y-velo with the rocket 
		mars_y_velo.x = x + (360 - 288); 
		mars_y_velo.y = y + (375 - 357); 
		
		alien_progress_bar.x = x + (387 - 288);
		alien_progress_bar.y = y + (320 - 357);
		
		// Set separate instructions for easy
		if (global.levelDifficulty == 0) {
			mission_objective.image_index = 8; 
		}
	}
	
	else if (global.currentLevel == 5) {
		// Move the x-velo with the rocket 
		jup_x_velo.x = x + (156 - 288);
		jup_x_velo.y = y + (375 - 357); 
	
		// Move the y-velo with the rocket 
		jup_y_velo.x = x + (360 - 288); 
		jup_y_velo.y = y + (375 - 357);
	} 
}