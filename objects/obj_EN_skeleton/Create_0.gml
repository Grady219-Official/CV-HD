active = false
aggro = false
aggroRadius = 150
unaggroRadius = 200
hp = 1
alive = true
vspd = 0
hspd = 0
depth = -1
hspdFraction = 0
vspdFraction = 0
grav = 0.125
movespeed = 0.5

update_movement = function()
{
	
	
	
	//collision response based off Shaun Spalding's implementation
	if (place_meeting(x + hspd, y, layer_tilemap_get_id("Tiles_1"))  || place_meeting(x + hspd, y, obj_colBox))
	{
			
			yplus = 0	
			while ((place_meeting(x+hspd, y - yplus,layer_tilemap_get_id("Tiles_1"))  || place_meeting(x + hspd, y-yplus, obj_colBox))  && (yplus <= abs (hspd)))
			{
				yplus +=1
			}
			if (place_meeting(x + hspd, y - yplus, layer_tilemap_get_id("Tiles_1"))  || place_meeting(x + hspd, y-yplus, obj_colBox))	
			{	
				while !(place_meeting(x + sign(hspd), y, layer_tilemap_get_id("Tiles_1"))  || place_meeting(x + sign(hspd), y, obj_colBox))
				{
					x +=   sign(hspd); 
				}
				hspd = 0;
				hspdFraction = 0
			}
			else
			{
				y-= yplus
			}
		//else if(!place_meeting(x+p1_direction,y,obj_colBox)){x+=p1_direction}	
	}
	
	//subX +=  hspd
//	x = ceil(abs(subX))// * sign(p1_direction)
	
	
	x  +=  hspd;
	
// downward slope check
	if (
			!(place_meeting(x,y,layer_tilemap_get_id("Tiles_1")) || place_meeting(x,y + vspd,obj_colBox))
			&& vspd >= 0 
			&& (place_meeting(x,y+2+abs(hspd),layer_tilemap_get_id("Tiles_1")) || place_meeting(x,y+2+abs(hspd),obj_colBox))
		)
	{
	    while !(place_meeting(x,y+1,layer_tilemap_get_id("Tiles_1")) || place_meeting(x,y+1,obj_colBox))
	    {
			y += 1;
	    }
	}
// vertical collision check
	if (place_meeting(x,y + vspd, layer_tilemap_get_id("Tiles_1")) || place_meeting(x,y + vspd,obj_colBox))
	{
		while !(place_meeting(x, y + sign(vspd), layer_tilemap_get_id("Tiles_1")) || place_meeting(x, y + sign(vspd), obj_colBox))
		{
			y +=  sign(vspd)
		}
		vspd = 0;
		vspdFraction= 0
	}
	y += vspd;
	
}
enum SKELE_ENEMY_STATES
{
	IDLE,
	ACTIVATED,
	CHASING,
	RETREAT,
	ATTACK
}

mState = SKELE_ENEMY_STATES.IDLE
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