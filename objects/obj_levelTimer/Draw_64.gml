draw_self()
x = 1800 - 45
y = 25
draw_set_valign(fa_top)
draw_set_halign(fa_right)
draw_set_font(timer_fontBig)
draw_text_transformed(x-30,y+18,level_timer_minutes,scale,scale,0)
draw_set_halign(fa_left)
draw_text_transformed(x-22,y+18,secondTimer(level_timer_seconds_display),scale,scale,0)
draw_set_font(timer_fontSmall)
draw_text_transformed(x-30,y+28,":",scale,scale,0)
draw_text_transformed(x+40,y+27,".",scale,scale,0)
draw_text_transformed(x+50,y*2 +5,secondTimer(round(level_timer_centiseconds_display)),scale,scale,0)