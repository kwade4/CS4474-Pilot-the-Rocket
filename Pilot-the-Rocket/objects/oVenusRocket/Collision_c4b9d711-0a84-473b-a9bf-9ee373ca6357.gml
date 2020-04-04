collision = true; 
physics_pause_enable(true);		// Stop physics simulation 

// If the speed is too fast, then a collsion will result 
if (phy_speed_x > 1 || phy_speed_y > 1) {
	image_index = 2;	// Display explosion
}

else {
	image_index = 0;	// rocket landed 
}
