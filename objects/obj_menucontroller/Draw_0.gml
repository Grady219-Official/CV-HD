//Drawing Black Text


if(current_menu = "Local Play")
{
	draw_sprite(spr_playermenu,0,96,195)
	draw_set_halign(fa_center)
	draw_text_transformed(795,398,obj_savemanager.current_difficulty,textsize,textsize,0)
	draw_text_transformed(308,218,obj_savemanager.current_character,textsize*0.7,textsize*0.7,0)
	draw_text_transformed(795,398+75,obj_savemanager.current_chapter,textsize,textsize,0)
	draw_set_halign(fa_left)
}
//Drawing Red Text


switch(current_menu){
	
	case "Soma Cruz":{
		draw_sprite(spr_selBoxBg,0,bgOffset,colorY)
		for(i=0;i<8;i++){
		scr_pal_swap_set(spr_Soma_palette,i)
		draw_sprite_ext(spr_Soma_idle,0,colorX+(i*colorMargin),colorY,2,2,image_angle,c_white,1)
		}
		shader_reset()
		draw_sprite(spr_selBox,0,colorX + (colorMargin * obj_cursor.cursor_target),colorY+boxOffset)
	break;
	}
	case "Alucard":{
		draw_sprite(spr_selBoxBg,0,bgOffset,colorY)
		for(i=0;i<8;i++){
		scr_pal_swap_set(spr_Alucard_palette,i)
		draw_sprite_ext(spr_Alu_idle,0,colorX+(i*colorMargin),colorY,2,2,image_angle,c_white,1)
		}
		shader_reset()
		draw_sprite(spr_selBox,0,colorX + (colorMargin * obj_cursor.cursor_target),colorY+boxOffset)
	break;
	}
	case "Jonathan Morris":{
		draw_sprite(spr_selBoxBg,0,bgOffset,colorY)
		for(i=0;i<8;i++){
		scr_pal_swap_set(spr_Jonathan_palette,i)
		draw_sprite_ext(spr_Jon_idle,0,colorX+(i*colorMargin),colorY,2,2,image_angle,c_white,1)
		}
		shader_reset()
		draw_sprite(spr_selBox,0,colorX + (colorMargin * obj_cursor.cursor_target),colorY+boxOffset)
	break;
	}
	case "Charlotte Aulin":{
		draw_sprite(spr_selBoxBg,0,bgOffset,colorY)
		for(i=0;i<8;i++){
		scr_pal_swap_set(spr_Charlotte_palette,i)
		draw_sprite_ext(spr_Char_idle,0,colorX+(i*colorMargin),colorY,2,2,image_angle,c_white,1)
		}
		shader_reset()
		draw_sprite(spr_selBox,0,colorX + (colorMargin * obj_cursor.cursor_target),colorY+boxOffset)
	break;
	}
	case "Shanoa":{
		draw_sprite(spr_selBoxBg,0,bgOffset,colorY)
		for(i=0;i<8;i++){
		scr_pal_swap_set(spr_Shanoa_palette,i)
		draw_sprite_ext(spr_Shan_idle,0,colorX+(i*colorMargin),colorY,2,2,image_angle,c_white,1)
		}
		shader_reset()
		draw_sprite(spr_selBox,0,colorX + (colorMargin * obj_cursor.cursor_target),colorY+boxOffset)
	break;
	}
	case "Change Characters":{
		draw_sprite(spr_uiCharaNameBox,0,480,160)
		draw_sprite(spr_uiCharaSelPortrait,0,1216,304)
		switch obj_cursor.cursor_target{
			case 0:{
				draw_sprite(spr_soma_Portrait,0,1248,320)
				break;
			}
			case 1:{
				draw_sprite(spr_alucard_Portrait,0,1248,320)
				break;
			}
			case 2:{
				draw_sprite(spr_jonathan_Portrait,0,1248,320)
				break;
			}
			case 5:{
				draw_sprite(spr_shanoa_Portrait,0,1248,320)
				break;
			}
			case 6:{
				draw_sprite(spr_charlotte_Portrait,0,1248,320)
				break;
			}
		}
		draw_set_color(c_black)
		draw_set_valign(fa_left)
		//for(i=0;i<array_length(menu_display);i+=1)
		if(obj_cursor.cursor_target = 0){
			
			draw_text_transformed(list1X,list1Y,menu_display[0],textsize*0.75,textsize* 0.75,0)
			draw_text_transformed(list2X,list2Y,menu_display[1],textsize*0.75,textsize* 0.75,0)
			draw_text_transformed(list3X,list3Y,menu_display[2],textsize*0.75,textsize* 0.75,0)
			draw_set_color(c_red)
			draw_text_transformed(list1X,list1Y,menu_display[0],textsize*0.75,textsize* 0.75,0)
			draw_set_color(c_black)
		}
		else if(obj_cursor.cursor_target = array_length(menu_display)-1){
			draw_text_transformed(list1X,list1Y,menu_display[array_length(menu_display)-3],textsize*0.75,textsize* 0.75,0)
			draw_text_transformed(list2X,list2Y,menu_display[array_length(menu_display)-2],textsize*0.75,textsize* 0.75,0)
			draw_text_transformed(list3X,list3Y,menu_display[array_length(menu_display)-1],textsize*0.75,textsize* 0.75,0)
			draw_set_color(c_red)
			draw_text_transformed(list3X,list3Y,menu_display[array_length(menu_display)-1],textsize*0.75,textsize* 0.75,0)
			draw_set_color(c_black)
		}
		else{
			draw_text_transformed(list1X,list1Y,menu_display[obj_cursor.cursor_target-1],textsize*0.75,textsize* 0.75,0)
			draw_text_transformed(list2X,list2Y,menu_display[obj_cursor.cursor_target],textsize*0.75,textsize* 0.75,0)
			draw_text_transformed(list3X,list3Y,menu_display[obj_cursor.cursor_target+1],textsize*0.75,textsize* 0.75,0)
			draw_set_color(c_red)
			draw_text_transformed(list2X,list2Y,menu_display[obj_cursor.cursor_target],textsize*0.75,textsize* 0.75,0)
			draw_set_color(c_black)
		}
	break;
	}
	default:{
		draw_set_color(c_black)
		draw_set_valign(fa_top)
		for(i=0;i<array_length(menu_display);i+=1)
		{
			draw_text_transformed(1275,190 + (i*75),menu_display[i],textsize,textsize,0)
		}
		draw_set_color(c_red)
		draw_text_transformed(1275,190 + (obj_cursor.cursor_target *75),menu_display[obj_cursor.cursor_target],textsize,textsize,0)
		draw_set_color(c_black)
	}
}
