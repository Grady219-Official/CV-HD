// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_SM_crouch(){
if (mInnerState == 0)  //enter
		{
			mInnerState = 1;
			sprite_index = anim_crouch
			image_index = 0
			image_speed = 1
			hspd = 0
			p1_current_jump = 2
		}
		if (mInnerState == 1)  //update
		{
			var hMove = -scr_button_check(true,0,pad_left,key_left) + scr_button_check(true,0,pad_right,key_right);
			if(image_index > image_number -1)
				image_speed = 0
			if(hMove != 0)
			{	
				image_xscale = sign(hMove)
				p1_direction = sign(hMove)
				
			}
			if(!scr_button_check(true,0,pad_down,key_down) && !place_meeting(x,y-2,obj_colBox)) 
			{
				ChangeState(PLAYER_STATES.IDLE)
			}
			else if (scr_button_check_pressed(true,0,pad_faceD,key_jump))
			{
				if(place_meeting(x,y+1,obj_ColFallThrough))
				{
					obj_ColFallThrough.mask_index = spr_colFallThroughEmpty
					y+=1
					ChangeState(PLAYER_STATES.FALL);
				}
				else
				{
					ChangeState(PLAYER_STATES.SLIDE);
				}
			}
		}
		if (mInnerState == 2)  //exit
		{
			mState = mNextState;
			mInnerState = 0;
		}
}