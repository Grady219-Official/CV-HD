window_set_caption("Castlevania:  Harmony of Despair")

if(audio_is_playing(bgm_Drone))
{
	audio_stop_sound(bgm_Drone)
}
instance_create_depth(0,0,0,obj_menuSoundHandler)
obj_menuSoundHandler.current_song = audio_play_sound(bgm_Hymnus,1,true)