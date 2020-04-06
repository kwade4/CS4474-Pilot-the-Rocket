/// @description Insert description here
// You can write your code in this editor

if(position_meeting(mouse_x, mouse_y, id)){
	//reset the levels
	global.levels[0] = 0;	//placeholder
	global.levels[1] = 1;	//earth
	global.levels[2] = 0;	//mercury
	global.levels[3] = 0;	//venus
	global.levels[4] = 0;	//mars
	global.levels[5] = 1;	//jupiter
	global.levels[6] = 0;	//saturn
	global.levels[7] = 0;	//uranus
	global.levels[8] = 0;	//neptune
	with(oRadioButton){
		selected = false;	
	}
	selected = true;
	switch(label){
		case "easy": {
			global.levelDifficulty = 0;
			break;
		}
		case "medium": {
			global.levelDifficulty = 1;
			break;
		}
		case "hard": {
			global.levelDifficulty = 2;
			break;
		}
		default: {
			global.levelDifficulty = 0;
			break;
		}
	}
}
