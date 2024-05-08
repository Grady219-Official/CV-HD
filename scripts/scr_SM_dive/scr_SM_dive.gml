// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_SM_dive(){
		if (mInnerState == 0)  //enter
		{
			mInnerState = 1;
			sprite_index = anim_diveD
			image_index = 0
			image_speed = 2
			var hMove = -scr_button_check(true,0,pad_left,key_left) + scr_button_check(true,0,pad_right,key_right);
			hspd = (dive_speed) * sign(hMove)
			p1_direction = sign(hMove)
			if(hspd != 0){sprite_index = anim_diveDF}
		}
		if (mInnerState == 1)  //update
		{
			
			//if (hMove != 0)  //direction
			//{	
			//	image_xscale = sign(hMove)
			//	p1_direction = sign(hMove)
			//}
			vspd = 10
			hspd = (move_speed * 3) * sign(p1_direction)
			if (isOnGround())
			{
				ChangeState(PLAYER_STATES.IDLE);
				hspd = 0
			}	
		}
		if (mInnerState == 2)  //exit
		{
			mState = mNextState;
			mInnerState = 0;
		}
}