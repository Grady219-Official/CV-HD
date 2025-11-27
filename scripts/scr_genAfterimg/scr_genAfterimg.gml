function scr_genAfterimg(spriteHistory,imgNum,distance,col = c_white,alpha = 0.5 ){
for(i=1;i<imgNum;i++)
{
	draw_sprite_ext(
spriteHistory[i*distance][SPRITEHISTORY.SPR_INDEX],
spriteHistory[i*distance][SPRITEHISTORY.IMG_INDEX],
spriteHistory[i*distance][SPRITEHISTORY.X_POS],
spriteHistory[i*distance][SPRITEHISTORY.Y_POS],
spriteHistory[i*distance][SPRITEHISTORY.PLAYER_DIRECTION],
1,image_angle,
col,
alpha/i
)
}
}