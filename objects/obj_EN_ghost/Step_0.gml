/// @description Insert description here
// You can write your code in this editor
moveDirectionX = sign(homeX-x)
moveDirectionY = sign(homeY-y)
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