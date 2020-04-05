if (global.currentLevel == 4) {
	
	// Move the fuel gauge with the rocket 
	fuel_gauge.x = x + 104; 
	fuel_gauge.y = y + 16; 


	// Move the mission objective box with the rocket 
	mission_objective.x = x - 32; 
	mission_objective.y = y; 
	
	// Move the x-velo with the rocket 
	mars_x_velo.x = x + (156 - 288);
	mars_x_velo.y = y + (375 - 357); 
	
	// Move the y-velo with the rocket 
	mars_y_velo.x = x + (360 - 288); 
	mars_y_velo.y = y + (375 - 357); 
	
}