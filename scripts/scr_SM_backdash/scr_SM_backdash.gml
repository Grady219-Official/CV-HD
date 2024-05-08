// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_SM_backdash(){
if (mInnerState == 0)  //enter
		{
			mInnerState = 1;
			sprite_index = anim_backdash
			image_index = 0
			image_speed = 2
			hspd = backdash_speed * image_xscale
		}
		if (mInnerState == 1)  //update
		{						//use ChangeState() to go to next state
			if (!isOnGround())
			{	
				ChangeState(PLAYER_STATES.FALL);
				p1_current_jump = 1
				hspd = 0
				newX = round(abs(subX)) * sign(subX)
				x = newX
			}
			else if(scr_button_check_pressed(true,0,pad_faceD,key_jump))
			{
				ChangeState(PLAYER_STATES.JUMPU)
			}
			else if(scr_button_check_pressed(true,0,pad_down,key_down))
			{
				ChangeState(PLAYER_STATES.CROUCH)
			}
			else if(abs(hspd) !=0)
				hspd += (backdash_speed/20) * -image_xscale
			else if(abs(hspd) <= 0 && image_index = image_number - 1)
				{
					ChangeState(PLAYER_STATES.IDLE)
				}
			if(obj_savemanager.current_character = "Alucard")
			{
				
				if(scr_button_check_pressed(true,0,pad_shdrL,key_backdash) && image_index >= 5)
				{
					mInnerState = 0
				}
			}
		}
		if (mInnerState == 2)  //exit
		{
			mState = mNextState;
			mInnerState = 0;
		}
}