/// @description Insert description here
// You can write your code in this editor

text = "";

if (global.currentLevel == 2 or global.currentLevel == 4 or global.currentLevel == 5 or global.currentLevel == 7) {
	tryAgain = instance_create_depth(x - 47, y + 28, -101, oTryAgain);
	tryAgain.image_xscale = 0.47;
	tryAgain.image_yscale = 0.57;
	astroExit = instance_create_depth(x + 47, y + 28, -101, oAstroExit);
	astroExit.image_xscale = 0.47;
	astroExit.image_yscale = 0.57;
} else {
	tryAgain = instance_create_depth(x - 100, y + 50, -101, oTryAgain);
	exitAstro = instance_create_depth(x + 100, y + 50, -101, oAstroExit);
}