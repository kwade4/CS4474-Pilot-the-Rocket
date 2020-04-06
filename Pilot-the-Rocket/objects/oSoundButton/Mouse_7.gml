/// @description Insert description here
// You can write your code in this editor

if(global.mute = false){
	image_index = 2;
	global.mute = true;
	audio_sound_gain(snd_1, 0, 0);
	audio_sound_gain(snd_2, 0, 0);
	audio_sound_gain(snd_3, 0, 0);
	audio_sound_gain(snd_4, 0, 0);
	audio_sound_gain(snd_5, 0, 0);
	audio_sound_gain(mLvEndScreen, 0, 0);
	audio_sound_gain(mLvFailed, 0, 0);
	//audio_pause_all();
}
else if(global.mute = true){
	image_index = 0;
	global.mute = false;
	audio_sound_gain(snd_1, 1, 0);
	audio_sound_gain(snd_2, 1, 0);
	audio_sound_gain(snd_3, 1, 0);
	audio_sound_gain(snd_4, 1, 0);
	audio_sound_gain(snd_5, 1, 0);
	audio_sound_gain(mLvEndScreen, 1, 0);
	audio_sound_gain(mLvFailed, 1, 0);
	//audio_resume_all();
}