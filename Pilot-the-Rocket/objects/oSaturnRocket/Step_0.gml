/// @description Insert description here
// You can write your code in this editor

key_left = keyboard_check(vk_left); //checks if virtual keyboard left is pressed
key_right = keyboard_check(vk_right);
var moveh = key_right - key_left;
hsp = moveh * mvSp;	
x = x + hsp;
key_up = keyboard_check(vk_up); //checks if virtual keyboard left is pressed
key_down = keyboard_check(vk_down);
var movev = key_down - key_up;
vsp = movev * mvSp;
y = y + vsp;

x = clamp(x, 50, room_width+10); 
y = clamp(y, -20, room_height - 70);

if(x>room_width){
	room_goto(rLvEndScreen);	
}

if(global.SaturnHealth < 0){
	//level failed condtion met
	room_goto(rLvInstructions);
}

if(place_meeting(x,y,oSaturnRing1) or place_meeting(x,y,oSaturnRing2) or place_meeting(x,y,oSaturnRing3) or place_meeting(x,y,oSaturnRing4)){
	sprite_index = s_hotRocket;
}
else{
	sprite_index = s_rocket;
}
