/// @description Insert description here
// You can write your code in this editor

image_index = 0;
global.currentLevel = global.currentLevel + 1;
audio_stop_sound(mLvEndScreen);
audio_play_sound(snd_1, 10, true);
room_goto(rLvInfo);