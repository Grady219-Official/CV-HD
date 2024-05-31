// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_SM_jump2(){
if (mInnerState == 0)  //enter
		{
			mInnerState = 1;
			sprite_index = anim_jumpA;
			image_index = 0
			image_speed = 2
			vspd = -jump2_strength;
			vspdFraction = 0
			p1_current_jump --
		}
		if (mInnerState == 1)  //update
		{
			var hMove = -scr_button_check(true,0,pad_left,key_left) + scr_button_check(true,0,pad_right,key_right);
			hspd = hMove * move_speed;
			if (hMove != 0)
				image_xscale = sign(hMove);
				p1_direction = sign(hMove)
			if (scr_button_check_pressed(true,0,pad_faceD,key_jump))
			{
				if (scr_button_check(true,0,pad_down,key_down))
				{
					ChangeState(PLAYER_STATES.DIVE)
				}
			}
			else if (vspd < 0) && (!key_jump_held)
			{
			     vspd = max(vspd,-(jump2_strength/4))
			}
			else if (vspd >= 0)
				ChangeState(PLAYER_STATES.FALL);
			
		}
		if (mInnerState == 2)  //exit
		{
			mState = mNextState;
			mInnerState = 0;
		}
}