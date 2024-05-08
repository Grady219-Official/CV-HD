// 
function scr_cancel(_menu,_cursor_index){
	switch (_menu)
	{
		case "local_play": // Local
		{
			
			for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_pop(menu_history)
				array_copy(menu_display,0,menu_screen1,0,array_length(menu_screen1))
				obj_cursor.cursor_target = 0
				current_menu = menu_history[array_length(menu_history)-1]
		break;
		}
		case "character": // character select
		{
			
			for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_pop(menu_history)
				array_copy(menu_display,0,local_play,0,array_length(local_play))
				obj_cursor.cursor_target = 0
				current_menu = menu_history[array_length(menu_history)-1]
		break;
		}
		case "chapter": // chapter select
		{
			
			for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_pop(menu_history)
				array_copy(menu_display,0,local_play,0,array_length(local_play))
				obj_cursor.cursor_target = 1
				current_menu = menu_history[array_length(menu_history)-1]
		break;
		}
		case "status": // status screen
		{
			
			for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_pop(menu_history)
				array_copy(menu_display,0,local_play,0,array_length(local_play))
				obj_cursor.cursor_target = 2
				current_menu = menu_history[array_length(menu_history)-1]
		break;
		}
		
		case "online_play": // Online
		{
			
			for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_pop(menu_history)
				array_copy(menu_display,0,menu_screen1,0,array_length(menu_screen1))
				obj_cursor.cursor_target = 1
				current_menu = menu_history[array_length(menu_history)-1]
				audio_stop_sound(bgm_multiplayer)
				audio_play_sound(bgm_Hymnus,1,true)
		break;
		}
		case "options": // Options
		{
			
			for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_pop(menu_history)
				array_copy(menu_display,0,menu_screen1,0,array_length(menu_screen1))
				obj_cursor.cursor_target = 4
				current_menu = menu_history[array_length(menu_history)-1]
		break;
		}
		case "settings":  //Settings
		{
			for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_pop(menu_history)
				array_copy(menu_display,0,options,0,array_length(options))
				obj_cursor.cursor_target = 2
				current_menu = menu_history[array_length(menu_history)-1]
		break;
		}
		case "controller":  //Controller Settings
		{
			for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_pop(menu_history)
				array_copy(menu_display,0,settings,0,array_length(settings))
				obj_cursor.cursor_target = 0
				current_menu = menu_history[array_length(menu_history)-1]
		break;
		}
	}
	audio_play_sound(snd_cancel,1,false)
}