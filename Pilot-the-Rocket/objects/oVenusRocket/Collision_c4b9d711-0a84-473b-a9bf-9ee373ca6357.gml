collision = true;  

// If the speed is too fast, then a collsion will result 
if (abs(phy_speed_x) > 1 || abs(phy_speed_y) > 1) {
	image_index = 2;	// Display explosion
	success = false; 
}

else {
	image_index = 0;	// rocket landed 
	success = true; 
	
}	

physics_pause_enable(true);		// Stop physics simulation