///@function
///@param {_newMenu}				The new menu to pass to current_menu
///@param {_cursorPosition}		    The new position of the cursor.  OPTIONAL


function scr_cancelUpdate(_newMenu,_cursorPosition = 0){
		for(i=0;i<array_length(menu_display);i+=1)
		{
			array_delete(menu_display,0,array_length(menu_display))
		}
		obj_cursor.cursor_target = _cursorPosition
		current_menu = _newMenu
		array_pop(menu_history)
		prev_menu = ""
} 