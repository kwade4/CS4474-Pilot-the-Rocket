if(place_meeting(x,y,oUranus)){
	reachGoalAI = true;
	instance_deactivate_object(oUranusRocket);
}
if(instance_exists(oUranusRocket)){
	aiPath = path_add();
	mp_grid_path(uranusGrid, aiPath, x, y, oUranus.x, oUranus.y, true);
<<<<<<< Updated upstream
	if(global.currentLevel==0){
		path_start(aiPath, 2, path_action_stop, true);
	}
	if(global.currentLevel==1){
		path_start(aiPath, 3, path_action_stop, true);
	}
	else{
		path_start(aiPath, 4, path_action_stop, true);
	}
	
=======
	path_start(aiPath, aiSpeed, path_action_stop, true);
>>>>>>> Stashed changes
}