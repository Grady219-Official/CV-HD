/// @description Insert description here
// You can write your code in this editor

//current_chapter = current_chapter
current_song = 0
switch(obj_savemanager.current_chapter)
{
	case("Chapter 1"):
	{
		if(!audio_is_playing(bgm_chapter1))
		{
			current_song = audio_play_sound(bgm_chapter1,1,true)
			break;
		}
		
	}
	case("Chapter 2"):
	{
		if(!audio_is_playing(bgm_chapter2))
		{
			current_song = audio_play_sound(bgm_chapter2,1,true)
			break;
		}
		
	}
	case("Chapter 3"):
	{
		if(!audio_is_playing(bgm_chapter3))
		{
			current_song = audio_play_sound(bgm_chapter3,1,true)
			break;
		}
		
	}
	case("Chapter 4"):
	{
		if(!audio_is_playing(bgm_chapter4))
		{
			current_song = audio_play_sound(bgm_chapter4,1,true)
			break;
		}
		
	}
	case("Chapter 5"):
	{
		if(!audio_is_playing(bgm_chapter5))
		{
			current_song = audio_play_sound(bgm_chapter5,1,true)
			break;
		}
		
	}
	case("Chapter 6"):
	{
		if(!audio_is_playing(bgm_chapter6))
		{
			current_song = audio_play_sound(bgm_chapter6,1,true)
			break;
		}
		
	}
}
