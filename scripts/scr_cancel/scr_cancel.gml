// 
function scr_cancel(_menu,_cursor_index){
	switch (_menu)
	{
		case "Main Menu":{
			scr_cancelUpdate(menu_history[array_length(menu_history)-1])
			audio_stop_sound(bgm_Hymnus)
		break;
			
		}
		case "Local Play": // Local
		{
			scr_cancelUpdate(menu_history[array_length(menu_history)-1])
		break;
		}
		case "Change Characters": // character select
		{
			
			scr_cancelUpdate(menu_history[array_length(menu_history)-1])
		break;
		}
		case "Select a Chapter": // chapter select
		{
			
			scr_cancelUpdate(menu_history[array_length(menu_history)-1])
		break;
		}
		case "Status Menu": // status screen
		{
			
			scr_cancelUpdate(menu_history[array_length(menu_history)-1])
		break;
		}
		
		case "Online Play": // Online
		{
			
			scr_cancelUpdate(menu_history[array_length(menu_history)-1])
			audio_stop_sound(bgm_multiplayer)
			audio_play_sound(bgm_Hymnus,1,true)
		break;
		}
		case "Help & Options": // Options
		{
			
			scr_cancelUpdate(menu_history[array_length(menu_history)-1])
		break;
		}
		case "Settings":  //Settings
		{
			scr_cancelUpdate(menu_history[array_length(menu_history)-1])
		break;
		}
		case "Controller Settings":  //Controller Settings
		{
			scr_cancelUpdate(menu_history[array_length(menu_history)-1])
		break;
		}
	}
	audio_play_sound(snd_cancel,1,false)
}