///@function
///@param {_newMenu}			string	The new menu to pass to current_menu
///@param {_cursorPosition}		real    The new position of the cursor.  OPTIONAL
///@param {_backOneScreen}			boolean  True if going back 1 screen.  Defaults to false OPTIONAL

function scr_confirmUpdate(_newMenu,_cursorPosition = 0,_backAScreen = false, _howManyScreens = 0){
		for(i=0;i<array_length(menu_display);i+=1)
		{
			array_delete(menu_display,0,array_length(menu_display))
		}
		obj_cursor.cursor_target = _cursorPosition
		if(_backAScreen = false){
			array_push(menu_history,current_menu)
		}
		else{
			for(i=0;i<_howManyScreens;i++)
			{
				array_pop(menu_history)
			}
		}
		current_menu = _newMenu
		//instance_create_depth(1170,144,1,obj_pageright)
}