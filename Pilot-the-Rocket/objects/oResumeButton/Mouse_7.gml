/// @description Insert description here
// You can write your code in this editor

globalvar resumeRoom;
resumeRoom = true;
image_index = 0;	
room_goto(global.currentRoom);
audio_stop_sound(snd_2);
//global.pause = 1;
/*
if(global.currentLevel == 1){
	room_goto(rEarth);
}
else if(global.currentLevel == 2){
	room_goto(rMercury);
}
else if(global.currentLevel == 3){
	room_goto(rVenus);
}
else if(global.currentLevel == 4){
	room_goto(rMars);
}
else if(global.currentLevel == 5){
	room_goto(rJupiter);
}
else if(global.currentLevel == 6){
	room_goto(rSaturn);
}
else if(global.currentLevel == 7){
	room_goto(rUranus);
}
else if(global.currentLevel == 8){
	room_goto(rNeptune);
}*/