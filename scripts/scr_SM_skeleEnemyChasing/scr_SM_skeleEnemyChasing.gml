// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_SM_skeleEnemyChasing(){
if (mInnerState == 0)  //enter
		{
			mInnerState = 1;
		}
		if (mInnerState == 1)  //update
		{	
			 //use ChangeState() to go to next state
			if(!collision_circle(x,y,100,obj_PL_1,false,true))
			{
				ChangeState(SKELE_ENEMY_STATES.ACTIVATED)	
			}
			else
			{   
				if(collision_circle(x,y,40,obj_PL_1,false,true)|| hspd = 0)
				{
					
					if(x <= obj_PL_1.x)
					{
						
						hspd =  -movespeed
						image_xscale = 1
						
					}
					else
					{
						hspd =  movespeed
						image_xscale = -1
					}
				}
				else if(!collision_circle(x,y,90,obj_PL_1,false,true))
				{
						if(x <= obj_PL_1.x)
					{
						
						hspd =  movespeed
						image_xscale = 1
					}
					else
					{
						hspd = -movespeed
						image_xscale = -1
					}
					
				}
				
			}
			if(irandom_range(1,100) = 1)
			{
				ChangeState(SKELE_ENEMY_STATES.ATTACK)
			}	
		}
		if (mInnerState == 2)  //exit
		{
			mState = mNextState;
			mInnerState = 0;
		}
}