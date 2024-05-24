// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_SM_fall(){
if (mInnerState == 0)  //enter
		{
			mInnerState = 1;
			sprite_index = anim_fall;
			image_index = 0
			image_speed = 3
		}
		if (mInnerState == 1)  //update
		{
			var hMove = -scr_button_check(true,0,pad_left,key_left) + scr_button_check(true,0,pad_right,key_right);
			hspd = hMove * move_speed;
			if (hMove != 0)
				image_xscale = sign(hMove);
				p1_direction = sign(hMove);
			
			if (hMove!=0 && isOnGround())
			{
				ChangeState(PLAYER_STATES.WALK)
			}
			else if (isOnGround()/* && !scr_button_check_pressed(true,0,pad_faceD,key_jump)*/)
				{
				ChangeState(PLAYER_STATES.IDLE);
				}
			//else if(isOnGround && keyboard_check_pressed(key_jump))
			//{
			//	ChangeState(PLAYER_STATES.JUMPF)
			//	p1_current_jump = 1
			//}
			else if (scr_button_check_pressed(true,0,pad_faceD,key_jump) && p1_current_jump > 0)
			{	
				ChangeState(PLAYER_STATES.JUMP2);
				p1_current_jump--
			}
			else if (scr_button_check_pressed(true,0,pad_faceD,key_jump) && p1_current_jump <= 0)
			{
				if (scr_button_check(true,0,pad_down,key_down))
				{
					ChangeState(PLAYER_STATES.DIVE)
				}
			}
			
		}
		if (mInnerState == 2)  //exit
		{
			mState = mNextState;
			mInnerState = 0;
		}
}