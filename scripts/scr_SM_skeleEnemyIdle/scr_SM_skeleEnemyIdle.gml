// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_SM_skeleEnemyIdle(){
if (mInnerState == 0)  //enter
		{
			mInnerState = 1;
			hspd = 0
			hspdFraction = 0
		}
		if (mInnerState == 1)  //update
		{						//use ChangeState() to go to next state
			if(collision_circle(x,y,aggroRadius,obj_PL_1,false,true))
			{
				ChangeState(SKELE_ENEMY_STATES.CHASING)
				
			}
		}
		if (mInnerState == 2)  //exit
		{
			mState = mNextState;
			mInnerState = 0;
		}
}