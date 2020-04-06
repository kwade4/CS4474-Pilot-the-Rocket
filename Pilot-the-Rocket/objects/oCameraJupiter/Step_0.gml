if(!global.paused & !oRocketJupiter.rope){
	follow = oRocketJupiter;
	global.camX = x;
	global.camY = y;
	global.halfViewWidth = camera_get_view_width(mainCamera) * 0.5;
	global.halfViewHeight = camera_get_view_height(mainCamera) * 0.5;

	if(instance_exists(follow))
	{
		xTo = follow.x;
		yTo = follow.y;
	}

	x += (xTo - x) * .05;
	y += (yTo - y) * .05;

	x = clamp(x, halfViewWidth, room_width - halfViewWidth);
	y = clamp(y, halfViewHeight, room_height - halfViewHeight);

	camera_set_view_pos(mainCamera, x - halfViewWidth, y - halfViewHeight);

	layer_x("Background", x * 0.3);

	oGameHUD.y = y - halfViewHeight + 357;
	oGameHUD.x = x - halfViewWidth + 288; 

	oHelpfulAstro.y = y + 150;
	oHelpfulAstro.x = x - 240;
	
	oSettingsButton.y = y - halfViewHeight + 40;
	oSettingsButton.x = x - halfViewWidth + 550;
}
if(oRocketJupiter.rope and !camLocked){
	x =	680;
	y = 250;
	
	x = clamp(x, halfViewWidth, room_width - halfViewWidth);
	y = clamp(y, halfViewHeight, room_height - halfViewHeight);
	
	camera_set_view_pos(mainCamera, x, y);
	oGameHUD.y = y + 359;
	oGameHUD.x = x + 288; 

	oHelpfulAstro.y = y + 340;
	oHelpfulAstro.x = x + 50;
	
	oSettingsButton.y = y - halfViewHeight + 40;
	oSettingsButton.x = x - halfViewWidth + 550;
	camLocked = true;
}