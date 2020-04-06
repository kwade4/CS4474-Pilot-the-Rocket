global.camX = 0;
global.camY = 0;
global.halfViewWidth = 0;
global.halfViewHeight = 0;

audio_stop_sound(snd_1);
if (!audio_is_playing(snd_2))
{
	audio_play_sound(snd_2, 10, true);
}