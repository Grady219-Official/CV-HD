//imported variables
cont_UP = obj_savemanager.cont_UP
cont_DOWN = obj_savemanager.cont_DOWN
cont_LEFT = obj_savemanager.cont_LEFT
cont_RIGHT = obj_savemanager.cont_RIGHT
cont_A = obj_savemanager.cont_A
cont_Y = obj_savemanager.cont_Y
cont_X = obj_savemanager.cont_X
cont_B = obj_savemanager.cont_B

// #macros
enum characterCursor{
	SOMA,
	ALUCARD,
	JONATHAN,
	JULIUS,
	RICHTER,
	SHANOA,
	CHARLOTTE,
	YOKO,
	MARIA,
	SIMON,
	FUMA	
}

//shader locations
colorX = 745
colorY = 610
colorMargin = 120
boxOffset = 18
bgOffset = 628

// char select offsets
list1X = 560
list1Y = 360
list2X = 560
list2Y = 540
list3X = 560
list3Y = 720


//Setting up font
#region //Setting up menu font
map_string = " !\"#$%&;()*+,-./0123456789:;<+>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~";
vremya_font = font_add_sprite_ext(spr_bitmap_font,map_string, true, 1)
draw_set_font(vremya_font)
textsize = 0.7
#endregion
#region //Setting up variables
current_menu = "Main Menu"
menu_history[0] = "Title Screen"
prev_menu = ""
menu_display[0] = ""
#endregion

charInfo = 
[
	CHAR_SOM_NAME_LONG,
	CHAR_SOM_NAME_SHORT,
	obj_savemanager.somaColor
]

instance_create_depth(x,y,depth,obj_cursor)

scr_item_LUT()
