
function scr_confirm(_menu,_cursor_index){
switch (_menu)
{
	case "Main Menu":
	{
		switch (_cursor_index)
		{
			case 0: //Local
			{
				scr_confirmUpdate(menu_display[obj_cursor.cursor_target])
				
			break;
			}
			case 1: // Online
			{
				scr_confirmUpdate(MENU_PAGENAME_ONLINE)
				
				audio_stop_sound(bgm_Hymnus)
				audio_play_sound(bgm_multiplayer,1,true)
				instance_create_depth(1170,144,1,obj_pageright)
			break;
			}
			case 2: // Leaderboards
			{
			break;
			}
			case 3: //Replays
			{
			break;
			}
			case 4: //Help and Options
			{
				scr_confirmUpdate(menu_display[obj_cursor.cursor_target])
				instance_create_depth(1170,144,1,obj_pageright)
				break;
			}
			case 5: //DLC
			{
			break;
			}
			case 6: //Adjust Screen
			{
			break;
			}
		}
	break;
	}
	case "Local Play":
	{
		switch (_cursor_index)
		{
			case 0: // Change Character
			{
				scr_confirmUpdate(menu_display[obj_cursor.cursor_target],)
				//obj_cursor.cursor_target = 0
				switch(obj_savemanager.current_character)
				{
					case "Soma Cruz":
					{
						obj_cursor.cursor_target = characterCursor.SOMA//change these to fix
						break;
					}
					case "Alucard":
					{
						obj_cursor.cursor_target = characterCursor.ALUCARD
						break;
					}
					case "Jonathan Morris":
					{
						obj_cursor.cursor_target = characterCursor.JONATHAN
						break;
					}
					case "Julius Belmont":
					{
						obj_cursor.cursor_target = characterCursor.JULIUS
						break;
					}
					case "Richter Belmont":
					{
						obj_cursor.cursor_target = characterCursor.RICHTER
						break;
					}
					case "Shanoa":
					{
						obj_cursor.cursor_target = characterCursor.SHANOA
						break;
					}
					case "Charlotte Aulin":
					{
						obj_cursor.cursor_target = characterCursor.CHARLOTTE
						break;
					}
					case "Yoko Belnades":
					{
						obj_cursor.cursor_target = characterCursor.YOKO
						break;
					}
					case "Maria Renard":
					{
						obj_cursor.cursor_target = characterCursor.MARIA
						break;
					}
					case "Simon Belmont":
					{
						obj_cursor.cursor_target = characterCursor.SIMON
						break;
					}
					case "Getsu Fuma":
					{
						obj_cursor.cursor_target = characterCursor.FUMA
						break;
					}
				}
				instance_create_depth(1170,144,1,obj_pageright)
			break;
			}
			case 1: // Change Chapter
			{
				scr_confirmUpdate(menu_display[obj_cursor.cursor_target])
				instance_create_depth(1170,144,1,obj_pageright)
			break;
			}
			case 2: // Status
			{
				scr_confirmUpdate(menu_display[obj_cursor.cursor_target])
				instance_create_depth(1170,144,1,obj_pageright)
			break;
			}
			case 3: // Shop
			{
				scr_confirmUpdate(menu_display[obj_cursor.cursor_target])
				instance_create_depth(1170,144,1,obj_pageright)
			break;
			}
			case 4: // Start
			{
				audio_stop_all()
				switch (obj_savemanager.current_chapter)
				{
					case "Chapter 1":
					{
						room_goto(rom_chapter1N)
					break;
					}
					case "Chapter 2":
					{
						room_goto(rom_chapter2N)
					break;
					}
					case "Chapter 3":
					{
						room_goto(rom_chapter3N)
					break;
					}
					case "Chapter 4":
					{
						room_goto(rom_chapter4N)
					break;
					}
					case "Chapter 5":
					{
						room_goto(rom_chapter5N)
					break;
					}
					case "Chapter 6":
					{
						room_goto(rom_chapter6N)
					break;
					}
					case "Hub":
					{
						room_goto(rom_hub)
					break;
					}
				
				
				}
			break;
			}
		}
	break;
	}
	case "Online Play":
	{
		switch (_cursor_index)
		{
			case 0: // Co-op mode
			{
				scr_confirmUpdate(menu_display[obj_cursor.cursor_target])
			break;
			}
			case 1: // Survival
			{
				scr_confirmUpdate(menu_display[obj_cursor.cursor_target])
			break;
			}
			case 2: // Check invites
			{
			break;
			}
		}
	break;
	}
	case "Change Characters":
	{
		obj_cursor.characterCursorTarget = obj_cursor.cursor_target
		scr_confirmUpdate(menu_display[obj_cursor.cursor_target])	
		switch obj_cursor.characterCursorTarget{
			case characterCursor.SOMA:{
			obj_cursor.cursor_target = obj_savemanager.somaColor
			break;
			}
			case characterCursor.ALUCARD:{
			obj_cursor.cursor_target = obj_savemanager.alucardColor
			break;
			}
			case characterCursor.JONATHAN:{
			    obj_cursor.cursor_target = obj_savemanager.jonathanColor
			    break;
			}
			case characterCursor.CHARLOTTE:{
			    obj_cursor.cursor_target = obj_savemanager.charlotteColor
			    break;
			}
			case characterCursor.SHANOA:{
			    obj_cursor.cursor_target = obj_savemanager.shanoaColor
			    break;
			}
			case characterCursor.JULIUS:{
			    obj_cursor.cursor_target = obj_savemanager.juliusColor
			    break;
			}
			case characterCursor.YOKO:{
			    obj_cursor.cursor_target = obj_savemanager.yokoColor
			    break;
			}
			case characterCursor.RICHTER:{
			    obj_cursor.cursor_target = obj_savemanager.richterColor
			    break;
			}
			case characterCursor.MARIA:{
			    obj_cursor.cursor_target = obj_savemanager.mariaColor
			    break;
			}
			case characterCursor.SIMON:{
			    obj_cursor.cursor_target = obj_savemanager.simonColor
			    break;
			}
			case characterCursor.FUMA:{
			    obj_cursor.cursor_target = obj_savemanager.fumaColor
			    break;
			}
		}
		
		break;
	}
	case "Soma Cruz" :{
		audio_play_sound(snd_somaSelect,1,false)
		
		obj_savemanager.current_character = current_menu
		obj_savemanager.somaColor = obj_cursor.cursor_target
		obj_savemanager.current_color = obj_savemanager.somaColor
		
		data = ds_map_create()
		ds_map_add(data, "character", obj_savemanager.current_character)
		ds_map_add(data, "color", obj_savemanager.somaColor)
		scr_sendMapOverUDP(global.ip, global.port, 100, data, msgType.SET_PLAYER_STAT);
		
		scr_confirmUpdate(menu_history[array_length(menu_history) - 2],0,true,2)
	break;
	}
	case "Alucard" :{
		audio_play_sound(snd_alucardSelect,1,false)
		//obj_cursor.characterCursorTarget = characterCursor.ALUCARD
		obj_savemanager.current_character = current_menu
		obj_savemanager.alucardColor = obj_cursor.cursor_target
		obj_savemanager.current_color = obj_savemanager.alucardColor
		
		data = ds_map_create()
		ds_map_add(data, "character", obj_savemanager.current_character)
		ds_map_add(data, "color", obj_savemanager.alucardColor)
		scr_sendMapOverUDP(global.ip, global.port, 100, data, msgType.SET_PLAYER_STAT);
		
		scr_confirmUpdate(menu_history[array_length(menu_history) - 2],0,true,2)
	break;
	}
	case "Jonathan Morris" :{
		audio_play_sound(snd_jonathanSelect,1,false)
		obj_cursor.characterCursorTarget = characterCursor.JONATHAN
		obj_savemanager.current_character = current_menu
		obj_savemanager.jonathanColor = obj_cursor.cursor_target
		obj_savemanager.current_color = obj_savemanager.jonathanColor
		
		data = ds_map_create()
		ds_map_add(data, "character", obj_savemanager.current_character)
		ds_map_add(data, "color", obj_savemanager.jonathanColor)
		scr_sendMapOverUDP(global.ip, global.port, 100, data, msgType.SET_PLAYER_STAT);
		
		scr_confirmUpdate(menu_history[array_length(menu_history) - 2],0,true,2)
	break;
	}
	case "Charlotte Aulin" :{
		audio_play_sound(snd_charlotteSelect,1,false)
		obj_cursor.characterCursorTarget = characterCursor.CHARLOTTE
		obj_savemanager.current_character = current_menu
		obj_savemanager.charlotteColor = obj_cursor.cursor_target
		obj_savemanager.current_color = obj_savemanager.charlotteColor
		
		data = ds_map_create()
		ds_map_add(data, "character", obj_savemanager.current_character)
		ds_map_add(data, "color", obj_savemanager.charlotteColor)
		scr_sendMapOverUDP(global.ip, global.port, 100, data, msgType.SET_PLAYER_STAT);
		
		scr_confirmUpdate(menu_history[array_length(menu_history) - 2],0,true,2)
	break;
	}
	case "Shanoa" :{
		audio_play_sound(snd_shanoaSelect,1,false)
		obj_cursor.characterCursorTarget = characterCursor.SHANOA
		obj_savemanager.current_character = current_menu
		obj_savemanager.shanoaColor = obj_cursor.cursor_target
		obj_savemanager.current_color = obj_savemanager.shanoaColor
		
		data = ds_map_create()
		ds_map_add(data, "character", obj_savemanager.current_character)
		ds_map_add(data, "color", obj_savemanager.shanoaColor)
		scr_sendMapOverUDP(global.ip, global.port, 100, data, msgType.SET_PLAYER_STAT);
		
		scr_confirmUpdate(menu_history[array_length(menu_history) - 2],0,true,2)
	break;
	}
	case "Julius Belmont" :{
		
		obj_cursor.characterCursorTarget = characterCursor.JULIUS
		obj_savemanager.current_character = current_menu
		obj_savemanager.juliusColor = obj_cursor.cursor_target
		obj_savemanager.current_color = obj_savemanager.juliusColor
		
		data = ds_map_create()
		ds_map_add(data, "character", obj_savemanager.current_character)
		ds_map_add(data, "color", obj_savemanager.juliusColor)
		scr_sendMapOverUDP(global.ip, global.port, 100, data, msgType.SET_PLAYER_STAT);
		
		scr_confirmUpdate(menu_history[array_length(menu_history) - 2],0,true,2)
	break;
	}
	case "Yoko Belnades" :{
		
		obj_cursor.characterCursorTarget = characterCursor.YOKO
		obj_savemanager.current_character = current_menu
		obj_savemanager.yokoColor = obj_cursor.cursor_target
		obj_savemanager.current_color = obj_savemanager.yokoColor
		
		data = ds_map_create()
		ds_map_add(data, "character", obj_savemanager.current_character)
		ds_map_add(data, "color", obj_savemanager.yokoColor)
		scr_sendMapOverUDP(global.ip, global.port, 100, data, msgType.SET_PLAYER_STAT);
		
		scr_confirmUpdate(menu_history[array_length(menu_history) - 2],0,true,2)
	break;
	}
	case "Richter Belmont" :{
		
		obj_cursor.characterCursorTarget = characterCursor.RICHTER
		obj_savemanager.current_character = current_menu
		obj_savemanager.richterColor = obj_cursor.cursor_target
		obj_savemanager.current_color = obj_savemanager.richterColor
		
		data = ds_map_create()
		ds_map_add(data, "character", obj_savemanager.current_character)
		ds_map_add(data, "color", obj_savemanager.richterColor)
		scr_sendMapOverUDP(global.ip, global.port, 100, data, msgType.SET_PLAYER_STAT);
		
		scr_confirmUpdate(menu_history[array_length(menu_history) - 2],0,true,2)
	break;
	}
	case "Maria Renard" :{
		
		obj_cursor.characterCursorTarget = characterCursor.MARIA
		obj_savemanager.current_character = current_menu
		obj_savemanager.mariaColor = obj_cursor.cursor_target
		obj_savemanager.current_color = obj_savemanager.mariaColor
		
		data = ds_map_create()
		ds_map_add(data, "character", obj_savemanager.current_character)
		ds_map_add(data, "color", obj_savemanager.mariaColor)
		scr_sendMapOverUDP(global.ip, global.port, 100, data, msgType.SET_PLAYER_STAT);
		
		scr_confirmUpdate(menu_history[array_length(menu_history) - 2],0,true,2)
	break;
	}
	case "Simon Belmont" :{
		
		obj_cursor.characterCursorTarget = characterCursor.SIMON
		obj_savemanager.current_character = current_menu
		obj_savemanager.simonColor = obj_cursor.cursor_target
		obj_savemanager.current_color = obj_savemanager.simonColor
		
		data = ds_map_create()
		ds_map_add(data, "character", obj_savemanager.current_character)
		ds_map_add(data, "color", obj_savemanager.simonColor)
		scr_sendMapOverUDP(global.ip, global.port, 100, data, msgType.SET_PLAYER_STAT);
		
		scr_confirmUpdate(menu_history[array_length(menu_history) - 2],0,true,2)
	break;
	}
	case "Getsu Fuma" :{
		
		obj_cursor.characterCursorTarget = characterCursor.FUMA
		obj_savemanager.current_character = current_menu
		obj_savemanager.fumaColor = obj_cursor.cursor_target
		obj_savemanager.current_color = obj_savemanager.fumaColor
		
		data = ds_map_create()
		ds_map_add(data, "character", obj_savemanager.current_character)
		ds_map_add(data, "color", obj_savemanager.fumaColor)
		scr_sendMapOverUDP(global.ip, global.port, 100, data, msgType.SET_PLAYER_STAT);
		
		scr_confirmUpdate(menu_history[array_length(menu_history) - 2],0,true,2)
	break;
	}
	case "Select a Chapter":{
		obj_savemanager.current_chapter = menu_display[obj_cursor.cursor_target]
		scr_confirmUpdate(menu_history[array_length(menu_history) - 1],1,true,1)
		instance_create_depth(1170,144,1,obj_pageleft)
		
	break;
	}
	case "Status Menu":{
		switch (_cursor_index)
		{
			case 0: // Offensive Gear
			{
				scr_confirmUpdate(menu_display[obj_cursor.cursor_target])
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
			case 1: // Defensive Gear
			{
				scr_confirmUpdate(menu_display[obj_cursor.cursor_target])
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
			case 2: // Martial Arts
			{
				scr_confirmUpdate(menu_display[obj_cursor.cursor_target])
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
			case 3: // Offensive Gear
			{
				scr_confirmUpdate(menu_display[obj_cursor.cursor_target])
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
			case 4: // Monster Compendium
			{
				scr_confirmUpdate(menu_display[obj_cursor.cursor_target])
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
			case 5: // Item Compendium
			{
				scr_confirmUpdate(menu_display[obj_cursor.cursor_target])
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
			case 6: // Controller Settings
			{
				scr_confirmUpdate(menu_display[obj_cursor.cursor_target])
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
			case 7: // Sound Settings
			{
				scr_confirmUpdate(menu_display[obj_cursor.cursor_target])
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
			case 8: // Window Settings
			{
				scr_confirmUpdate(menu_display[obj_cursor.cursor_target])
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
			case 9: // Screen Settings
			{
				scr_confirmUpdate(menu_display[obj_cursor.cursor_target])
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
			case 10: // Camera Settings
			{
				scr_confirmUpdate(menu_display[obj_cursor.cursor_target])
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
		}
	break;
	}
	case "Shop" :{
		switch (_cursor_index)
		{
			case 0: // Buy Items
			{
				scr_confirmUpdate(menu_display[obj_cursor.cursor_target])
			break;
			}
			case 1: // Sell Items
			{
				scr_confirmUpdate(menu_display[obj_cursor.cursor_target])
			break;
			}
			case 2: // Exit Shop
			{
				scr_confirmUpdate(menu_history[array_length(menu_history) - 1],0,true)
			break;
			}	
		}
	break;
	}
	case "Help & Options":
	{
		switch (_cursor_index)
		{
			case 0: // How to Play
			{
			break;
			}
			case 1: // Controls
			{
			break;
			}
			case 2: // Settings
			{
				scr_confirmUpdate(menu_display[obj_cursor.cursor_target])
				instance_create_depth(1170,144,1,obj_pageright)
			break;
			}
			case 3: // Monster Compendium
			{
			break;
			}
			case 4: // Item Compendium
			{
			break;
			}
		}
	break;
	}
	case "Settings":
	{
		switch (_cursor_index)
		{
			case 0: // Controller Settings
			{
				scr_confirmUpdate(menu_display[obj_cursor.cursor_target])
			break;
			}
			case 1: // Sound Settings
			{
			break;
			}
			case 2: // Window settings
			{
			break;
			}
			case 3: // Screen Settings
			{
			break;
			}
			case 4: // Camera settings
			{
			break;
			}
		}
	break;
	}
	case "Co-op Mode":
	{
		switch(_cursor_index)
		{
			case 2:
			{
				scr_confirmUpdate("Local Play")
		
				show_debug_message("Host Button selected")
				data = ds_map_create();
		
				ds_map_add(data, "hostNumber", noone);
				ds_map_add(data, "playerNumber", noone);
				ds_map_add(data, "character", obj_savemanager.current_character)
				ds_map_add(data, "color", obj_savemanager.current_color)
				ds_map_add(data, "gameMode", "Coop")
				ds_map_add(data, "difficulty", obj_savemanager.current_difficulty)
				ds_map_add(data, "chapter", obj_savemanager.current_chapter)
		
				scr_sendMapOverUDP(global.ip, global.port, 1000, data, msgType.CREATE_HOST);
			break;
			}
		}
	break;
	}
}
audio_play_sound(snd_confirm,1,false)
}