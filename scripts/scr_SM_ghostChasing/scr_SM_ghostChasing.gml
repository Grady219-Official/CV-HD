// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_SM_ghostChasing(){
if (mInnerState == 0)  //enter
		{
			mInnerState = 1;
		}
		if (mInnerState == 1)  //update
		{						//use ChangeState() to go to next state
			targetX = obj_PL_1.x
			targetY = obj_PL_1.y
			momentumX += moveDirectionX*acceleration
			momentumY+= moveDirectionY*acceleration
			if(abs(momentumX)>=maxSpeed) {momentumX = maxSpeed*sign(momentumX)}
			if(abs(momentumY)>=maxSpeed) {momentumY = maxSpeed*sign(momentumY)}
			x+=momentumX
			y+=momentumY
		}
		if (mInnerState == 2)  //exit
		{
			mState = mNextState;
			mInnerState = 0;
		}
}