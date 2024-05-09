// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_SM_enemyChasing(){
if (mInnerState == 0)  //enter
		{
			mInnerState = 1;
		}
		if (mInnerState == 1)  //update
		{						//use ChangeState() to go to next state
			if(!collision_circle(x,y,100,move_collide_redone,false,true))
			{
				ChangeState(ENEMY_STATES.ACTIVATED)	
			}
			else
			{
				if(x <= move_collide_redone.x)
				{
					hspd =  1
					image_xscale = hspd
				}
				else
				{
					hspd = -1
					image_xscale = hspd
				}
			}
		}
		if (mInnerState == 2)  //exit
		{
			mState = mNextState;
			mInnerState = 0;
		}
}