image_index = 0;
aiPath = undefined;
aiSpeed = 0;

globalvar reachGoalAI;
reachGoalAI = false;

if(global.levelDifficulty==0){
	aiSpeed = 1;
}
if(global.levelDifficulty==1){
	aiSpeed = 2;
}
if(global.levelDifficulty==2){
	aiSpeed = 3;
}
else{
	aiSpeed = 1;
}