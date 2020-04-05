/// @description Insert description here
// You can write your code in this editor

if(global.levelDifficulty != 2){
	instance_deactivate_object(oSaturnRock);	
}

num = random_range(0.5,1.5);

image_xscale = num;
image_yscale = num;