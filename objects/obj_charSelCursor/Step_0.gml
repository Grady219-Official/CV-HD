if(scr_button_check_pressed(true,0,move_collide_redone.pad_right,move_collide_redone.key_right))
{
	if(current_gridX = 3)
	{current_gridX = 0}
	else
	{current_gridX++}
}
else if(scr_button_check_pressed(true,0,move_collide_redone.pad_left,move_collide_redone.key_left))
{
	if(current_gridX = 0)
	{current_gridX = 3}
	else
	{current_gridX--}
}
else if(scr_button_check_pressed(true,0,move_collide_redone.pad_up,move_collide_redone.key_up))
{
	if(current_gridY = 0)
	{current_gridY = 2}
	else
	{current_gridY--}
}
else if(scr_button_check_pressed(true,0,move_collide_redone.pad_down,move_collide_redone.key_down))
{
	if(current_gridY = 2)
	{current_gridY = 0}
	else
	{current_gridY++}
}
if(scr_button_check_pressed(true,0,move_collide_redone.pad_faceD,move_collide_redone.key_jump))
{
	selected_grid = (current_gridX)+(current_gridY*4)
	switch selected_grid
	{
		case 0:
		{
			obj_savemanager.current_character = "Soma"
		break;
		}
		case 1:
		{
			obj_savemanager.current_character = "Alucard"
		break;
		}
		case 2:
		{
			obj_savemanager.current_character = "Jonathan"
		break;
		}
		case 3:
		{
			obj_savemanager.current_character = "Charlotte"
		break;
		}
		case 4:
		{
			obj_savemanager.current_character = "Shanoa"
		break;
		}
		case 5:
		{
			obj_savemanager.current_character = "Julius"
		break;
		}
		case 6:
		{
			obj_savemanager.current_character = "Yoko"
		break;
		}
		case 7:
		{
			obj_savemanager.current_character = "Richter"
		break;
		}
		case 8:
		{
			obj_savemanager.current_character = "Maria"
		break;
		}
		case 9:
		{
			obj_savemanager.current_character = "Simon"
		break;
		}
		case 10:
		{
			obj_savemanager.current_character = "Fuma"
		break;
		}
	}
	scr_spriteSet(obj_savemanager.current_character)
	move_collide_redone.ChangeState(PLAYER_STATES.IDLE);
	instance_destroy(obj_charSelTest)
	instance_destroy(self)
}