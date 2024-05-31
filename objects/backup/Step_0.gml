/*
//Debug code  REMOVE LATER!!!!!!!!!!!!
if(keyboard_check_pressed(vk_escape))
{
	audio_stop_all()
	room_goto(rom_menu)
}

//Get player input

#region check y axis
if (keyboard_check(key_up)) {
    y_axis = -1
} else if (keyboard_check(key_down)) {
    y_axis = 1
} else {
    y_axis = 0
}
#endregion
#region check x axis
if (keyboard_check(key_left)) {
    x_axis = -1
} else if (keyboard_check(key_right)) {
    x_axis = 1
} else {
    x_axis = 0
}
#endregion
//  Get non-directional button input
key_jump_held = scr_button_check(true,0,pad_faceD,key_jump)

//update input history
#region
input_history[input_index] = [x_axis,y_axis]
input_index = (input_index + 1) % array_length(input_history)
#endregion

//State Machine
switch (mState)
{
	case PLAYER_STATES.IDLE:
	{
		scr_SM_idle()
	break;
	}
	case PLAYER_STATES.WALK:
	{
		scr_SM_walk()
	break;
	}
	case PLAYER_STATES.JUMPU:
	{
		scr_SM_jumpU()
	break;
	}
	case PLAYER_STATES.JUMPF:
	{
		scr_SM_jumpF()
	break;
	}
	case PLAYER_STATES.FALL:
	{
		scr_SM_fall()
	break;
	}
	case PLAYER_STATES.JUMP2:
	{
		scr_SM_jump2()
	break;
	}
	case PLAYER_STATES.CROUCH:
	{
		scr_SM_crouch()
	break;
	}
	case PLAYER_STATES.SLIDE:
	{
		scr_SM_slide()
	break;
	}
	case PLAYER_STATES.DIVE:
	{
		scr_SM_dive()
	break;
	}
	case PLAYER_STATES.BACKDASH:
	{
		scr_SM_backdash()
	break;
	}
	case PLAYER_STATES.CUTSCENE:
	{
		scr_SM_cutscene()
	break;
	}
}




//Execute states based on previous states and current state

//Animation state machine

//End physics calculations
update_movement();