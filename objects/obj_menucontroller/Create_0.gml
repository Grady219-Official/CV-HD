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
#region //Main Menu
menu_screen1[0] = "Local Play"
menu_screen1[1] = "Online Play"
menu_screen1[2] = "Leaderboards"
menu_screen1[3] = "Replays"
menu_screen1[4] = "Help & Options"
menu_screen1[5] = "Download Content"
menu_screen1[6] = "Adjust Screen"
#endregion
#region //Local Play
local_play[0] = "Change Characters"
	#region  //Characters
	character[0] = "Soma Cruz"
	character[1] = "Alucard"
	character[2] = "Jonathan Morris"
	character[3] = "Julius Belmont"
	character[4] = "Richter Belmont"
	character[5] = "Shanoa"
	character[6] = "Charlotte Aulin"
	character[7] = "Yoko Belnades"
	character[8] = "Maria Renard"
	character[9] = "Simon Belmont"
	character[10] = "Getsu Fuma"
	#endregion
local_play[1] = "Select a Chapter"
	#region  //Chapters
	chapter[0] = "Chapter 1"
	chapter[1] = "Chapter 2"
	chapter[2] = "Chapter 3"
	chapter[3] = "Chapter 4"
	chapter[4] = "Chapter 5"
	chapter[5] = "Chapter 6"
	chapter[6] = "Chapter 7"
	chapter[7] = "Chapter 8"
	chapter[8] = "Chapter 9"
	chapter[9] = "Chapter 10"
	chapter[10] = "Chapter 11"
	chapter[11] = "Hub"
	#endregion
local_play[2] = "Status Menu"
	#region  //status
	status[0] = "Offensive Gear"
	status[1] = "Defensive Gear"
	status[2] = "Martial Arts"
	status[3] = "Monster Compendium"
	status[4] = "Item Compendium"
	status[5] = "Controller Settings"
	status[6] = "Sound Settings"
	status[7] = "Window Settings"
	status[8] = "Screen Settings"
	status[9] = "Camera Settings"
	#endregion
local_play[3] = "Shop"
local_play[4] = "Start the Game"
#endregion
#region //Online Play
online_play[0] = "Co-op Mode"
online_play[1] = "Survival Mode"
online_play[2] = "Check Invites"
#endregion
#region //Help & Options
options[0] = "How to Play"
options[1] = "Controls"
options[2] = "Settings"
	#region //Settings
	settings[0] = "Controller Settings"
		#region //Controller
		controller[0] = "Attack 1"
		controller[1] = "Attack 2"
		controller[2] = "Personal Skill"
		controller[3] = "Hunter Skills"
		controller[4] = "Jump"
		controller[5] = "Use item"
		controller[6] = "Back-dash"
		controller[7] = "Confirm action"
		controller[8] = "Display phrases"
		controller[9] = "Vibration"
		controller[10] = "Defaults"
		controller[11] = "Done"
		#endregion
	settings[1] = "Sound Settings"
	settings[2] = "Window Settings"
	settings[3] = "Screen Settings"
	settings[4] = "Camera Settings"
	#endregion
options[3] = "Monster Compendium"
options[4] = "Item Compendium"
#endregion

instance_create_depth(x,y,depth,obj_cursor)
array_copy(menu_display,0,menu_screen1,0,array_length(menu_screen1))
scr_item_LUT()
