draw_self()
x = 200
y = 61
draw_set_color(c_white)
draw_set_valign(fa_middle)
draw_set_halign(fa_right)
draw_set_font(obj_playerHUD.hp_font)
draw_text_transformed(x-7,y+8.5,currentMP,1,1,0)
