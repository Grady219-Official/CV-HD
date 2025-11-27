/// @description Insert description here
// You can write your code in this editor
scr_pal_swap_init();
if(file_exists("TextEN.json"))
{
	var _buffer = buffer_load("TextEN.json")
	var _string = buffer_read(_buffer, buffer_string)
	buffer_delete(_buffer)
	
	global.Strings = json_parse(_string)
}

button_check_pressed_any = function(_gamepad)
{
	return keyboard_check(vk_anykey) ||
		   gamepad_button_check_pressed(_gamepad,gp_face1) ||
	       gamepad_button_check_pressed(_gamepad,gp_face2) ||
	       gamepad_button_check_pressed(_gamepad,gp_face3) ||
	       gamepad_button_check_pressed(_gamepad,gp_face4) ||
	       gamepad_button_check_pressed(_gamepad,gp_padu) ||
	       gamepad_button_check_pressed(_gamepad,gp_padd) ||
	       gamepad_button_check_pressed(_gamepad,gp_padl) ||
	       gamepad_button_check_pressed(_gamepad,gp_padr) ||
	       gamepad_button_check_pressed(_gamepad,gp_shoulderl) ||
	       gamepad_button_check_pressed(_gamepad,gp_shoulderlb) ||
	       gamepad_button_check_pressed(_gamepad,gp_shoulderr) ||
	       gamepad_button_check_pressed(_gamepad,gp_shoulderrb) ||
	       gamepad_button_check_pressed(_gamepad,gp_stickl) ||
	       gamepad_button_check_pressed(_gamepad,gp_stickr) ||
	       gamepad_button_check_pressed(_gamepad,gp_select) ||
	       gamepad_button_check_pressed(_gamepad,gp_start) 
}