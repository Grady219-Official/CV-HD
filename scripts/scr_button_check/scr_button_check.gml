// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_button_check(hasGamepadButton,gamepadNumber = 0,gamepadButton = 0,keyboardButton){
	if (hasGamepadButton = true)
		{
			_gamepad = gamepad_button_check(gamepadNumber,gamepadButton)
			_keyboard = keyboard_check(keyboardButton)
			return (_gamepad || _keyboard)
		}
	else
		{
			return keyboard_check(keyboardButton)
		}
}