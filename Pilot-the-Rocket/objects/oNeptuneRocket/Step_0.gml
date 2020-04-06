/// @description Insert description here
// You can write your code in this editor


key_left = keyboard_check(vk_left); //checks if virtual keyboard left is pressed
key_right = keyboard_check(vk_right);
var moveh = key_right - key_left;
hsp = moveh * mvSp;	
key_up = keyboard_check(vk_up); //checks if virtual keyboard left is pressed
key_down = keyboard_check(vk_down);
var movev = key_down - key_up;
vsp = movev * mvSp;
path_speed = moveh*2;


/*if(place_meeting(x, y, oNeptuneRing)){
	image_index = 0;	
}
else{
	image_index = 1;	
}*/

if(global.itemsCollected = 6){
	room_goto(rLvEndScreen);	
}