// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_SM_enemyActive(){
if (mInnerState == 0)  //enter
		{
			mInnerState = 1;
		}
		if (mInnerState == 1)  //update
		{						//use ChangeState() to go to next state
			if(collision_circle(x,y,100,move_collide_redone,false,true))
			{
				ChangeState(ENEMY_STATES.CHASING)
			}
			else if(hspd =0 || alarm[0]<=0)
			{
				hspd = choose(-1,1)
				image_xscale = hspd
				alarm[0] = irandom_range(10,40)
			}
			
		
		}
		if (mInnerState == 2)  //exit
		{
			mState = mNextState;
			mInnerState = 0;
		}
}