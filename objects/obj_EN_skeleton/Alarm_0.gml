if(mState = SKELE_ENEMY_STATES.ACTIVATED)
{
hspd = choose(-movespeed,movespeed)
image_xscale = hspd
				alarm[0] = irandom_range(10,40)
}