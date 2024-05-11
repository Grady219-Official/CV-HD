// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_SM_skeleEnemyActive(){
if (mInnerState == 0)  //enter
		{
			sprite_index = spr_EN_skeletonWalk
			mInnerState = 1;
		}
		if (mInnerState == 1)  //update
		{						//use ChangeState() to go to next state
			if(collision_circle(x,y,200,obj_PL_1,false,true))
			{
				ChangeState(SKELE_ENEMY_STATES.CHASING)
			}
			else if(hspd =0 || alarm[0]<=0)
			{
				hspd = choose(-movespeed,movespeed)
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