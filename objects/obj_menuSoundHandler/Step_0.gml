/// @description Insert description here
// You can write your code in this editor



if(audio_is_playing(bgm_Hymnus))
{
	if(audio_sound_get_track_position(current_song) >= 99.81)
	{
		audio_sound_set_track_position(current_song,10.79)
	}
}
