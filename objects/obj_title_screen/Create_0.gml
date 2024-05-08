/// @description Insert description here
// You can write your code in this editor


button_check_any = function(_gamepad)
{
	return keyboard_check(vk_anykey) ||
		   gamepad_button_check(_gamepad,gp_face1) ||
	       gamepad_button_check(_gamepad,gp_face2) ||
	       gamepad_button_check(_gamepad,gp_face3) ||
	       gamepad_button_check(_gamepad,gp_face4) ||
	       gamepad_button_check(_gamepad,gp_padu) ||
	       gamepad_button_check(_gamepad,gp_padd) ||
	       gamepad_button_check(_gamepad,gp_padl) ||
	       gamepad_button_check(_gamepad,gp_padr) ||
	       gamepad_button_check(_gamepad,gp_shoulderl) ||
	       gamepad_button_check(_gamepad,gp_shoulderlb) ||
	       gamepad_button_check(_gamepad,gp_shoulderr) ||
	       gamepad_button_check(_gamepad,gp_shoulderrb) ||
	       gamepad_button_check(_gamepad,gp_stickl) ||
	       gamepad_button_check(_gamepad,gp_stickr) ||
	       gamepad_button_check(_gamepad,gp_select) ||
	       gamepad_button_check(_gamepad,gp_start) 
}