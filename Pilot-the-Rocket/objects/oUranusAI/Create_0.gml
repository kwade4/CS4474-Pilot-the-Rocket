image_index = 0;
//aiPath = undefined;

globalvar reachGoalAI;
reachGoalAI = false;

if(global.levelDifficulty==0){
	path_start(pUranus, 1, path_action_stop, true);	
}
if(global.levelDifficulty==1){
	path_start(pUranus, 2, path_action_stop, true);
}
if(global.levelDifficulty==2){
	path_start(pUranus, 3, path_action_stop, true);
}