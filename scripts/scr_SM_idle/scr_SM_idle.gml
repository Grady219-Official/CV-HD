// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_SM_idle(){
if (mInnerState == 0)  //enter
		{
			mInnerState = 1;
			sprite_index = anim_idle;
			image_index = 0
			image_speed = 2
			hspd = 0
			p1_current_jump = 2
		}
		if(!isOnGround())
		{
		ChangeState(PLAYER_STATES.FALL)
		}
		else if(scr_button_check_pressed(true,0,pad_shdrL,key_backdash))
		{
			ChangeState(PLAYER_STATES.BACKDASH);
		}
		else if (mInnerState == 1)  //update
		{
			var hMove = -scr_button_check(true,0,pad_left,key_left) + scr_button_check(true,0,pad_right,key_right);
			if (scr_button_check_pressed(true,0,pad_faceD,key_jump)){ChangeState(PLAYER_STATES.JUMPU);}
			else if(abs(hMove) > 0) {ChangeState(PLAYER_STATES.WALK);}
			else if scr_button_check(true,0,pad_down,key_down) {ChangeState(PLAYER_STATES.CROUCH);}
			else if scr_button_check(true,0,pad_up,key_up)
			{
				if(place_meeting(x,y,obj_charChange))
				{
					ChangeState(PLAYER_STATES.CUTSCENE);
					instance_create_depth(x,y,depth,obj_charSelTest)
				}
			}
			
		}
		if (mInnerState == 2)  //exit
		{
			mState = mNextState;
			mInnerState = 0;
		}
}