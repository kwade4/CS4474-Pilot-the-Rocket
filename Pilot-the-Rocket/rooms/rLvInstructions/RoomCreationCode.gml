var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
if(global.levelDifficulty == 0){
	layer_background_sprite(back_id, s_LvInstEasy);
	layer_background_index(back_id, global.currentLevel - 1);
}
else if(global.levelDifficulty == 1){
	layer_background_sprite(back_id, s_LvInstMed);
	layer_background_index(back_id, global.currentLevel - 1);
}
else{
	layer_background_sprite(back_id, s_LvInstHard);
	layer_background_index(back_id, global.currentLevel - 1);
}