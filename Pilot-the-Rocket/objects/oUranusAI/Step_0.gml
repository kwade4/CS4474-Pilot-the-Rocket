if(place_meeting(oUranusAI.x,oUranusAI.y,oUranus)){
	reachGoalAI = true;
	instance_deactivate_object(oUranusRocket);
}
if(instance_exists(oUranus)){
	aiPath = path_add();
	mp_grid_path(uranusGrid, aiPath, x, y, oUranus.x, oUranus.y, true);
	path_start(aiPath, 1, path_action_stop, true);
}