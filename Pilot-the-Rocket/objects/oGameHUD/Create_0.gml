// Scaling for Mars and Mercury Levels 
if (global.currentLevel == 4) {
	image_xscale = 0.3; 
	image_yscale = 0.3; 
	
	// Create a scaled fuel gauge on the HUD
	fuel_gauge = instance_create_depth(x+104, y+16, -100, oFuelGauge);
	fuel_gauge.image_xscale = 0.524/2; 
	fuel_gauge.image_yscale = 0.526/2; 
	fuel_gauge.image_index = 6;			// Show full fuel gauge 


	// Create a scaled mission objective screen on the HUD
	mission_objective = instance_create_depth(x-32, y, -100, oMissionObjHUD); 
	mission_objective.image_xscale = 0.9/2; 
	mission_objective.image_yscale = 0.9/2; 

	// Show the appropriate mission objective for the level 
	mission_objective.image_index = global.currentLevel - 1; 
}

else {
	
	image_xscale = 0.6; 
	image_yscale = 0.6; 

	// Create a scaled fuel gauge on the HUD
	fuel_gauge = instance_create_depth(x+204, y+32, -100, oFuelGauge);
	fuel_gauge.image_xscale = 0.524; 
	fuel_gauge.image_yscale = 0.526; 
	fuel_gauge.image_index = 6;			// Show full fuel gauge 


	// Create a scaled mission objective screen on the HUD
	mission_objective = instance_create_depth(x-64, y, -100, oMissionObjHUD); 
	mission_objective.image_xscale = 0.9; 
	mission_objective.image_yscale = 0.9; 

	// Show the appropriate mission objective for the level 
	mission_objective.image_index = global.currentLevel - 1; 
}
