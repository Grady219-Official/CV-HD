if(scr_button_check_pressed(true,0,obj_PL_1.pad_right,obj_PL_1.key_right))
{
	if(current_gridX = 3)
	{current_gridX = 0}
	else
	{current_gridX++}
	
	audio_play_sound(choose(snd_cursor1,snd_cursor2),1,false)
}
else if(scr_button_check_pressed(true,0,obj_PL_1.pad_left,obj_PL_1.key_left))
{
	if(current_gridX = 0)
	{current_gridX = 3}
	else
	{current_gridX--}
	audio_play_sound(choose(snd_cursor1,snd_cursor2),1,false)
}
else if(scr_button_check_pressed(true,0,obj_PL_1.pad_up,obj_PL_1.key_up))
{
	if(current_gridY = 0)
	{current_gridY = 2}
	else
	{current_gridY--}
	audio_play_sound(choose(snd_cursor1,snd_cursor2),1,false)
}
else if(scr_button_check_pressed(true,0,obj_PL_1.pad_down,obj_PL_1.key_down))
{
	if(current_gridY = 2)
	{current_gridY = 0}
	else
	{current_gridY++}
	audio_play_sound(choose(snd_cursor1,snd_cursor2),1,false)
}
if(scr_button_check_pressed(true,0,obj_PL_1.pad_faceD,obj_PL_1.key_jump))
{
	selected_grid = (current_gridX)+(current_gridY*4)
	switch selected_grid
	{
		case 0:
		{
			obj_savemanager.current_character = "Soma Cruz"
		break;
		}
		case 1:
		{
			obj_savemanager.current_character = "Alucard"
		break;
		}
		case 2:
		{
			obj_savemanager.current_character = "Jonathan Morris"
		break;
		}
		case 3:
		{
			obj_savemanager.current_character = "Charlotte Aulin"
		break;
		}
		case 4:
		{
			obj_savemanager.current_character = "Shanoa"
		break;
		}
		case 5:
		{
			obj_savemanager.current_character = "Julius Belmont"
		break;
		}
		case 6:
		{
			obj_savemanager.current_character = "Yoko Belnades"
		break;
		}
		case 7:
		{
			obj_savemanager.current_character = "Richter Belmont"
		break;
		}
		case 8:
		{
			obj_savemanager.current_character = "Maria Renard"
		break;
		}
		case 9:
		{
			obj_savemanager.current_character = "Simon Belmont"
		break;
		}
		case 10:
		{
			obj_savemanager.current_character = "Getsu Fuma"
		break;
		}
	}
	scr_spriteSet(obj_savemanager.current_character)
	obj_PL_1.ChangeState(PLAYER_STATES.IDLE);
	audio_play_sound(snd_confirm,1,false)
	instance_destroy(obj_charSelTest)
	instance_destroy(self)
	
}
else if(scr_button_check_pressed(true,0,obj_PL_1.pad_faceR,obj_PL_1.key_B))
{
	obj_PL_1.ChangeState(PLAYER_STATES.IDLE);
	audio_play_sound(snd_cancel,1,false)
	instance_destroy(obj_charSelTest)
	instance_destroy(self)
}