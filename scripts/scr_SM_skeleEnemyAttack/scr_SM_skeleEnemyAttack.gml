// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_SM_skeleEnemyAttack(){
if (mInnerState == 0)  //enter
		{
			instance_create_depth(x,y-30,100,obj_EN_projBone)
			hspd = 0
			alarm[1] = 30
			mInnerState = 1;
		}
		if (mInnerState == 1)  //update
		{						//use ChangeState() to go to next state
			
		}
		if (mInnerState == 2)  //exit
		{
			mState = mNextState;
			mInnerState = 0;
		}
}