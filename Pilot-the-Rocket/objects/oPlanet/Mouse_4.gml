/// @description Insert description here
// You can write your code in this editor

if(position_meeting(mouse_x, mouse_y, id) && global.levels[levelIndex]){
	global.currentLevel = levelIndex;
	//go to pre-level room
	room_goto(rLvInfo);
}