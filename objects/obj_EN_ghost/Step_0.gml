/// @description Insert description here
// You can write your code in this editor

targetDir+=0.5
if(targetDir >= 360){targetDir = 0}
switch (mState)
{
	case GHOST_ENEMY_STATES.IDLE:
	{
		scr_SM_ghostIdle()
	break;
	}
	case GHOST_ENEMY_STATES.CHASING:
	{
		scr_SM_ghostChasing()
	break;
	}
}
moveDirectionX = sign(targetX-x)
moveDirectionY = sign(targetY-y)
image_xscale = sign(moveDirectionX)