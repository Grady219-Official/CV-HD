active = false
aggro = false
hp = 1
alive = true
vspd = 0
hspd = 0
subX = x
subY = y
grav = 1.2
movespeed = .1

update_movement = function()
{
	vspd += grav;
	
	//collision response based off Shaun Spalding's implementation
	if (place_meeting(round(subX + hspd), y, obj_colBox))
	{
		yplus = 0	
		while (place_meeting(round(subX+hspd), y - yplus,obj_colBox) && (yplus <= abs (hspd)))
		{
			yplus +=1
		}
		if (place_meeting(round(subX + hspd), y - yplus, obj_colBox))	
		{	
			while (!place_meeting(round(subX + sign(hspd)), y, obj_colBox))
			{
				subX = subX +  sign(hspd); 
			}
			hspd = 0;
		}
		else
		{
			subY-= yplus
			y = round(subY)
		}
		//else if(!place_meeting(x+p1_direction,y,obj_colBox)){x+=p1_direction}	
	}
	
	//subX +=  hspd
//	x = ceil(abs(subX))// * sign(p1_direction)
	
	
	subX = subX +  hspd;
	x = round(subX);
	
// downward slope check
	if !place_meeting(x,y,obj_colBox) && vspd >= 0 && place_meeting(x,y+2+abs(hspd),obj_colBox)
	{
	    while(!place_meeting(x,y+1,obj_colBox))
	    {
	        subY+=1
			y += 1;
	    }
	}
// vertical collision check
	if (place_meeting(x, round(subY + vspd), obj_colBox))
	{
		while (!place_meeting(x, round(subY + sign(vspd)), obj_colBox))
		{
			subY = subY + sign(vspd)
		}
		vspd = 0;
	}
	subY = subY + vspd;
	y = round(subY);
}
enum ENEMY_STATES
{
	IDLE,
	ACTIVATED,
	CHASING,
	ATTACK
}

mState = ENEMY_STATES.IDLE
mInnerState = 0; // 0-enter, 1-update, 2-exit
mNextState = mState

ChangeState = function(nextState)
{
	mNextState = nextState;
	mInnerState = 2;
}
isOnGround = function()
{
	return place_meeting(x,y+1,obj_colBox)
}