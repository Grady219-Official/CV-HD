// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_SM_slide(){
if (mInnerState == 0)  //enter
		{
			mInnerState = 1;
			sprite_index = anim_slide
			image_index = 0
			image_speed = 2
			hspd = slide_speed * image_xscale
			p1_current_jump = 2
		}
		if (mInnerState == 1)  //update
		{
			
			if (!isOnGround())
			{	
				ChangeState(PLAYER_STATES.FALL);
				p1_current_jump = 1
				hspd = 0
				newX = round(abs(subX)) * sign(subX)
				x = newX
			}
			else if(abs(hspd) !=0)
				hspd -= (slide_speed/28) * image_xscale
			else if(((abs(hspd)) <= 0 && image_index = image_number - 1))
				{
					ChangeState(PLAYER_STATES.CROUCH)
				}
		}
		if (mInnerState == 2)  //exit
		{
			mState = mNextState;
			mInnerState = 0;
			if(mNextState = PLAYER_STATES.CROUCH)
			{
				sprite_index = anim_crouch
				image_index = image_number -1
				image_speed = 0
				mInnerState = 1
				hspd = 0
				p1_current_jump = 2
			}
		}
}