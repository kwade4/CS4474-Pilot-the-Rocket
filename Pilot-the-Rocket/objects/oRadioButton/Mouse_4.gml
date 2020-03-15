/// @description Insert description here
// You can write your code in this editor

if(position_meeting(mouse_x, mouse_y, id)){
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
