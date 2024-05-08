//Drawing Black Text
draw_set_color(c_black)
draw_set_valign(fa_top)
for(i=0;i<array_length(menu_display);i+=1)
{
	draw_text_transformed(1275,190 + (i*75),menu_display[i],textsize,textsize,0)
}
if(current_menu = "local_play")
{
	draw_sprite(spr_playermenu,0,96,195)
	draw_set_halign(fa_center)
	draw_text_transformed(795,398,obj_savemanager.current_difficulty,textsize,textsize,0)
	draw_text_transformed(308,218,obj_savemanager.current_character,textsize*0.7,textsize*0.7,0)
	draw_text_transformed(795,398+75,obj_savemanager.current_chapter,textsize,textsize,0)
	draw_set_halign(fa_left)
}
//Drawing Red Text
draw_set_color(c_red)
draw_text_transformed(1275,190 + (obj_cursor.cursor_target *75),menu_display[obj_cursor.cursor_target],textsize,textsize,0)

