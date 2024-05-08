
//Handle player input and move cursor
if (keyboard_check_pressed(cont_UP) || gamepad_button_check_pressed(0,gp_padu))
{
	if(obj_cursor.cursor_target = 0)
	{obj_cursor.cursor_target = array_length(menu_display)-1}
	else
	{obj_cursor.cursor_target-=1}
	audio_play_sound(choose(snd_cursor1,snd_cursor2),1,false)
}
if (keyboard_check_pressed(cont_DOWN) || gamepad_button_check_pressed(0,gp_padd))
{
	if(obj_cursor.cursor_target = array_length(menu_display)-1)
	{obj_cursor.cursor_target = 0}
	else
	{obj_cursor.cursor_target+=1}
	audio_play_sound(choose(snd_cursor1,snd_cursor2),1,false)
}
if(keyboard_check_pressed(cont_A) || gamepad_button_check_pressed(0,gp_face1))
{
	scr_confirm(current_menu,obj_cursor.cursor_target)
	
}
if(keyboard_check_pressed(cont_B) || gamepad_button_check_pressed(0,gp_face2))
{
	scr_cancel(current_menu,obj_cursor.cursor_target)
	
}
//Set new cursor position
obj_cursor.x = 1190  //1200
obj_cursor.y = 225 + (obj_cursor.cursor_target *75) //208


