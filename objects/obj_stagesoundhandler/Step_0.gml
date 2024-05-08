/// @description Insert description here
// You can write your code in this editor



if(audio_is_playing(bgm_chapter1))
{
	if(audio_sound_get_track_position(current_song) >= 101.35)
	{
		audio_sound_set_track_position(current_song,18.64)
	}
}
