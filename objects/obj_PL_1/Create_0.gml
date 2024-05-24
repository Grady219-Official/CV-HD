/// @description Insert description here
// You can write your code in this editor
//Input register
key_up = ord("W")
key_left = ord("A")
key_down = ord("S")
key_right = ord("D")



pad_up = gp_padu
pad_left = gp_padl
pad_down = gp_padd
pad_right = gp_padr

pad_faceU = gp_face4
pad_faceL = gp_face3
pad_faceR = gp_face2
pad_faceD = gp_face1
pad_shdrL = gp_shoulderl
pad_shdrR = gp_shoulderr
pad_trgrL = gp_shoulderlb
pad_trgrR = gp_shoulderrb

key_jump = (vk_numpad2)
key_jump_held = scr_button_check(true,0,pad_faceD,key_jump)
key_backdash = (vk_numpad4)
key_B = vk_numpad2
x_axis = 0
y_axis = 0

scr_spriteSet(obj_savemanager.current_character)

//input history array
input_history = array_create(10,0)
input_index = 0

//attributes
maxHP = 300
maxMP = 100
currentHP = maxHP
currentMP = maxMP


subX = x
subY = y
move_speed = 1.5
slide_speed = 4
dive_speed = 3
backdash_speed = -4
p1_direction = 1
hspd = 0
vspd = 0
grav = .125
jump_strength = 4.35
jump2_strength = jump_strength * 0.8
p1_max_jump = 2
p1_current_jump = 0
onGround = false

update_movement = function()
{
	vspd += grav;
	
	//collision response based off Shaun Spalding's implementation
	if (place_meeting(round(subX + hspd), y, layer_tilemap_get_id("Tiles_1")))
	{
		yplus = 0	
		while (place_meeting(round(subX+hspd), y - yplus,layer_tilemap_get_id("Tiles_1")) && (yplus <= abs (hspd)))
		{
			yplus +=1
		}
		if (place_meeting(round(subX + hspd), y - yplus, layer_tilemap_get_id("Tiles_1")))	
		{	
			while (!place_meeting(round(subX + sign(hspd)), y, layer_tilemap_get_id("Tiles_1")))
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
	if !place_meeting(x,y,layer_tilemap_get_id("Tiles_1")) && vspd >= 0 && place_meeting(x,y+2+abs(hspd),layer_tilemap_get_id("Tiles_1"))
	{
	    while(!place_meeting(x,y+1,layer_tilemap_get_id("Tiles_1")))
	    {
	        subY+=1
			y += 1;
	    }
	}
// vertical collision check
	if (place_meeting(x, round(subY + vspd), layer_tilemap_get_id("Tiles_1")))
	{
		while (!place_meeting(x, round(subY + sign(vspd)), layer_tilemap_get_id("Tiles_1")))
		{
			subY = subY + sign(vspd)
		}
		vspd = 0;
	}
	subY = subY + vspd;
	y = round(subY);
}

enum PLAYER_STATES
{
	IDLE,
	WALK,
	JUMPU,
	JUMPF,
	FALL,
	JUMP2,
	CROUCH,
	SLIDE,
	DIVE,
	BACKDASH,
	CUTSCENE
}

mState = PLAYER_STATES.IDLE
mInnerState = 0; // 0-enter, 1-update, 2-exit
mNextState = mState

ChangeState = function(nextState)
{
	mNextState = nextState;
	mInnerState = 2;
}
isOnGround = function()
{
	return place_meeting(x,y+1,layer_tilemap_get_id("Tiles_1"))
}
