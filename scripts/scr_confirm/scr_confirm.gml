
function scr_confirm(_menu,_cursor_index){
switch (_menu)
{
	case "menu_screen1":
	{
		switch (_cursor_index)
		{
			case 0: //Local
			{
				for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_copy(menu_display,0,local_play,0,array_length(local_play))
				obj_cursor.cursor_target = 0
				current_menu = "local_play"
				array_push(menu_history,current_menu)
				instance_create_depth(1170,144,1,obj_pageright)
				
			break;
			}
			case 1: // Online
			{
				for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_copy(menu_display,0,online_play,0,array_length(online_play))
				obj_cursor.cursor_target = 0
				current_menu = "online_play"
				array_push(menu_history,current_menu)
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
				for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_copy(menu_display,0,options,0,array_length(options))
				obj_cursor.cursor_target = 0
				current_menu = "options"
				array_push(menu_history,current_menu)
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
	case "local_play":
	{
		switch (_cursor_index)
		{
			case 0: // Change Character
			{
				for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_copy(menu_display,0,character,0,array_length(character))
				//obj_cursor.cursor_target = 0
				switch(obj_savemanager.current_character)
				{
					case "Soma":
					{
						obj_cursor.cursor_target = 0
						break;
					}
					case "Alucard":
					{
						obj_cursor.cursor_target = 1
						break;
					}
					case "Jonathan":
					{
						obj_cursor.cursor_target = 2
						break;
					}
					case "Julius":
					{
						obj_cursor.cursor_target = 3
						break;
					}
					case "Richter":
					{
						obj_cursor.cursor_target = 4
						break;
					}
					case "Shanoa":
					{
						obj_cursor.cursor_target = 5
						break;
					}
					case "Charlotte":
					{
						obj_cursor.cursor_target = 6
						break;
					}
					case "Yoko":
					{
						obj_cursor.cursor_target = 7
						break;
					}
					case "Maria":
					{
						obj_cursor.cursor_target = 8
						break;
					}
					case "Simon":
					{
						obj_cursor.cursor_target = 9
						break;
					}
					case "Fuma":
					{
						obj_cursor.cursor_target = 10
						break;
					}
				}
				current_menu = "character"
				array_push(menu_history,current_menu)
				instance_create_depth(1170,144,1,obj_pageright)
			break;
			}
			case 1: // Change Chapter
			{
				for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_copy(menu_display,0,chapter,0,array_length(chapter))
				obj_cursor.cursor_target = 0
				current_menu = "chapter"
				array_push(menu_history,current_menu)
				instance_create_depth(1170,144,1,obj_pageright)
			break;
			}
			case 2: // Status
			{
				for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_copy(menu_display,0,status,0,array_length(status))
				obj_cursor.cursor_target = 0
				current_menu = "status"
				array_push(menu_history,current_menu)
				instance_create_depth(1170,144,1,obj_pageright)
			break;
			}
			case 3: // Shop
			{
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
	case "character":
	{
		switch (_cursor_index)
		{
			case 0: // Soma Cruz
			{
				for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_copy(menu_display,0,local_play,0,array_length(local_play))
				obj_cursor.cursor_target = 0
				current_menu = "local_play"
				array_pop(menu_history)
				obj_savemanager.current_character = "Soma"
				
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
			case 1: // Alucard
			{
				for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_copy(menu_display,0,local_play,0,array_length(local_play))
				obj_cursor.cursor_target = 0
				current_menu = "local_play"
				array_pop(menu_history)
				obj_savemanager.current_character = "Alucard"
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
			case 2: // Jonathan Morris
			{
				for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_copy(menu_display,0,local_play,0,array_length(local_play))
				obj_cursor.cursor_target = 0
				current_menu = "local_play"
				array_pop(menu_history)
				obj_savemanager.current_character = "Jonathan"
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
			case 3: // Julius Belmont
			{
				for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_copy(menu_display,0,local_play,0,array_length(local_play))
				obj_cursor.cursor_target = 0
				array_pop(menu_history)
				current_menu = "local_play"
				obj_savemanager.current_character = "Julius"
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
			case 4: // Richter Belmont
			{
				for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_copy(menu_display,0,local_play,0,array_length(local_play))
				obj_cursor.cursor_target = 0
				array_pop(menu_history)
				current_menu = "local_play"
				obj_savemanager.current_character = "Richter"
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
			case 5: // Shanoa
			{
				for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_copy(menu_display,0,local_play,0,array_length(local_play))
				obj_cursor.cursor_target = 0
				array_pop(menu_history)
				current_menu = "local_play"
				obj_savemanager.current_character = "Shanoa"
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
			case 6: // Charlotte Aulin
			{
				for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_copy(menu_display,0,local_play,0,array_length(local_play))
				obj_cursor.cursor_target = 0
				array_pop(menu_history)
				current_menu = "local_play"
				obj_savemanager.current_character = "Charlotte"
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
			case 7: // Yoko Belnades
			{
				for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_copy(menu_display,0,local_play,0,array_length(local_play))
				obj_cursor.cursor_target = 0
				array_pop(menu_history)
				current_menu = "local_play"
				obj_savemanager.current_character = "Yoko"
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
			case 8: // Maria Renard
			{
				for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_copy(menu_display,0,local_play,0,array_length(local_play))
				obj_cursor.cursor_target = 0
				array_pop(menu_history)
				current_menu = "local_play"
				obj_savemanager.current_character = "Maria"
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
			case 9: // Simon Belmont
			{
				for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_copy(menu_display,0,local_play,0,array_length(local_play))
				obj_cursor.cursor_target = 0
				array_pop(menu_history)
				current_menu = "local_play"
				obj_savemanager.current_character = "Simon"
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
			case 10: // Getsu Fuma
			{
				for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_copy(menu_display,0,local_play,0,array_length(local_play))
				obj_cursor.cursor_target = 0
				array_pop(menu_history)
				current_menu = "local_play"
				obj_savemanager.current_character = "Fuma"
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
		}
	break;
	}
	case "chapter":
	{
		switch (_cursor_index)
		{
			case 0: // Chapter 1
			{
				for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_copy(menu_display,0,local_play,0,array_length(local_play))
				obj_cursor.cursor_target = 1
				array_pop(menu_history)
				current_menu = "local_play"
				obj_savemanager.current_chapter = "Chapter 1"
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
			case 1: // Chapter 2
			{
				for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_copy(menu_display,0,local_play,0,array_length(local_play))
				obj_cursor.cursor_target = 1
				array_pop(menu_history)
				current_menu = "local_play"
				obj_savemanager.current_chapter = "Chapter 2"
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
			case 2: // Chapter 3
			{
				for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_copy(menu_display,0,local_play,0,array_length(local_play))
				obj_cursor.cursor_target = 1
				array_pop(menu_history)
				current_menu = "local_play"
				obj_savemanager.current_chapter = "Chapter 3"
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
			case 3: // Chapter 4
			{
				for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_copy(menu_display,0,local_play,0,array_length(local_play))
				obj_cursor.cursor_target = 1
				array_pop(menu_history)
				current_menu = "local_play"
				obj_savemanager.current_chapter = "Chapter 4"
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
			case 4: // Chapter 5
			{
				for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_copy(menu_display,0,local_play,0,array_length(local_play))
				obj_cursor.cursor_target = 1
				array_pop(menu_history)
				current_menu = "local_play"
				obj_savemanager.current_chapter = "Chapter 5"
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
			case 5: // Chapter 6
			{
				for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_copy(menu_display,0,local_play,0,array_length(local_play))
				obj_cursor.cursor_target = 1
				array_pop(menu_history)
				current_menu = "local_play"
				obj_savemanager.current_chapter = "Chapter 6"
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
			case 6: // Chapter 7
			{
				for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_copy(menu_display,0,local_play,0,array_length(local_play))
				obj_cursor.cursor_target = 1
				array_pop(menu_history)
				current_menu = "local_play"
				obj_savemanager.current_chapter = "Chapter 7"
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
			case 7: // Chapter 8
			{
				for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_copy(menu_display,0,local_play,0,array_length(local_play))
				obj_cursor.cursor_target = 1
				array_pop(menu_history)
				current_menu = "local_play"
				obj_savemanager.current_chapter = "Chapter 8"
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
			case 8: // Chapter 9
			{
				for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_copy(menu_display,0,local_play,0,array_length(local_play))
				obj_cursor.cursor_target = 1
				array_pop(menu_history)
				current_menu = "local_play"
				obj_savemanager.current_chapter = "Chapter 9"
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
			case 9: // Chapter 10
			{
				for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_copy(menu_display,0,local_play,0,array_length(local_play))
				obj_cursor.cursor_target = 1
				array_pop(menu_history)
				current_menu = "local_play"
				obj_savemanager.current_chapter = "Chapter 10"
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
			case 10: // Chapter 11
			{
				for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_copy(menu_display,0,local_play,0,array_length(local_play))
				obj_cursor.cursor_target = 1
				array_pop(menu_history)
				current_menu = "local_play"
				obj_savemanager.current_chapter = "Chapter 11"
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
			case 11: // Hub
			{
				for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_copy(menu_display,0,local_play,0,array_length(local_play))
				obj_cursor.cursor_target = 1
				array_pop(menu_history)
				current_menu = "local_play"
				obj_savemanager.current_chapter = "Hub"
				instance_create_depth(1170,144,1,obj_pageleft)
			break;
			}
		}
	break;
	}
	case "options":
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
				for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_copy(menu_display,0,settings,0,array_length(settings))
				obj_cursor.cursor_target = 0
				current_menu = "settings"
				array_push(menu_history,current_menu)
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
	case "settings":
	{
		switch (_cursor_index)
		{
			case 0: // Controller Settings
			{
				for(i=0;i<array_length(menu_display);i+=1)
				{
					array_delete(menu_display,0,array_length(menu_display))
				}
				array_copy(menu_display,0,controller,0,array_length(controller))
				obj_cursor.cursor_target = 0
				current_menu = "controller"
				array_push(menu_history,current_menu)
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
}
audio_play_sound(snd_confirm,1,false)
}