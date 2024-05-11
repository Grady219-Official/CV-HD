/// @description Insert description here
// You can write your code in this editor

targetDir+=1
if(targetDir >= 360){targetDir = 0}
switch (mState)
{
	case GHOST_ENEMY_STATES.IDLE:
	{
		scr_SM_ghostIdle()
	break;
	}
}
moveDirectionX = sign(targetX-x)
moveDirectionY = sign(targetY-y)