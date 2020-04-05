/// @description Insert description here
// You can write your code in this editor
image_xscale = 0.9;
image_yscale = 0.9;

/// @description Insert description here
// You can write your code in this editor

if(global.levelDifficulty = 0){
	image_index = 2;
	damage = 0.25;
}
else if(global.levelDifficulty = 1){
	image_index = 0;
	damage = 0.5;
}
else{
	image_index = 0;
	damage = 0.75;
}