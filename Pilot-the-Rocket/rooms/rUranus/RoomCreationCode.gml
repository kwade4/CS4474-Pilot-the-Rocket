instance_create_depth(32, 32, 0, oUranusGrid);
uranusGrid = 0;

audio_stop_sound(snd_1);
if (!audio_is_playing(snd_2))
{
	audio_play_sound(snd_2, 10, true);
}