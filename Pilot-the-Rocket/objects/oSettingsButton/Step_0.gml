/// @description Insert description here
// You can write your code in this editor

room_persistent = false;
if(global.paused){
	//global.pause = 0;
	//instance_activate_all();	
	room_persistent = false;
	global.paused = false;
}