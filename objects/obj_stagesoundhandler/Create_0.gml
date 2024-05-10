/// @description Insert description here
// You can write your code in this editor

current_chapter = obj_savemanager.current_chapter
current_song = 0
switch(current_chapter)
{
	case("Chapter 1"):
	{
		if(!audio_is_playing(bgm_chapter1))
		{
			current_song = audio_play_sound(bgm_chapter1,1,false)
			break;
		}
		
	}
}
