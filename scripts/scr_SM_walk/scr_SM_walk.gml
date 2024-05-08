// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_SM_walk(){
if (mInnerState == 0)  //enter
		{
			mInnerState = 1;
			sprite_index = anim_walk
			image_index = 0
			image_speed = 2
			p1_current_jump = 2
		}
		if (mInnerState == 1)  //update
		{
			var hMove = -scr_button_check(true,0,pad_left,key_left) + scr_button_check(true,0,pad_right,key_right);
			hspd = hMove * move_speed
			
			if(scr_button_check(true,0,pad_shdrL,key_backdash))
			{
				ChangeState(PLAYER_STATES.BACKDASH);
			}
			else if (hMove != 0)  //direction
			{	
				image_xscale = sign(hMove)
				p1_direction = sign(hMove)
			}
			
			if (!isOnGround())
				ChangeState(PLAYER_STATES.FALL);
			else if (scr_button_check_pressed(true,0,pad_faceD,key_jump))
				ChangeState(PLAYER_STATES.JUMPF);
			else if (scr_button_check_pressed(true,0,pad_down,key_down))
				ChangeState(PLAYER_STATES.CROUCH);
			else if (hMove == 0)
				ChangeState(PLAYER_STATES.IDLE);
		}
		if (mInnerState == 2)  //exit
		{
			mState = mNextState;
			mInnerState = 0;
		}
}