/// @description Insert description here
// You can write your code in this editor

audio_stop_sound(snd_2);
audio_play_sound(mLvEndScreen, 15, true);

if(global.currentLevel = 8){
	instance_deactivate_object(oNextMissionButton);
}