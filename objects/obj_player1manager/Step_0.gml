//Setting character animation
obj_player1.image_speed = 0.6

switch (animation_state)
{
	case("idle"):
	{
		obj_player1.sprite_index = anim_idle
		break;
	}
	case("walk"):
	{
		obj_player1.sprite_index = anim_walk
		break;
	}
	case("jump_U"):
	{
		obj_player1.sprite_index = anim_jumpU
		if(obj_player1.image_index > obj_player1.image_number-1)
		{
			obj_player1.image_speed = 0
		}
		break;
	}
	case("jump_F"):
	{
		obj_player1.sprite_index = anim_jumpF
		if(obj_player1.image_index > obj_player1.image_number-1)
		{
			obj_player1.image_speed = 0
		}
		break;
	
	}
	case("jump_A"):
	{
		obj_player1.image_speed = 1
		obj_player1.sprite_index = anim_jumpA
		if(obj_player1.image_index > obj_player1.image_number-1)
		{
			obj_player1.image_speed = 0
		}
		break;
	
	}
	case("crouch"):
	{
		//obj_player1.image_speed = 1
		obj_player1.sprite_index = anim_crouch
		if(obj_player1.image_index > obj_player1.image_number-1)
		{
			obj_player1.image_speed = 0
		}		
		break;
	
	}
}
//Checking state
switch(physics_state)
{
	case("idle"):
	{
		if(keyboard_check(obj_savemanager.cont_DOWN))  //Crouch from stand
		{
			scr_nInput()
			animation_state = "crouch"
			physics_state = "crouch"
			if(p_animation_state != animation_state){obj_player1.image_index = 0}
			if(keyboard_check(obj_savemanager.cont_LEFT)){obj_player1.image_xscale=-1 /**/ p_direction = -1}
			else if(keyboard_check(obj_savemanager.cont_RIGHT)){obj_player1.image_xscale = 1 /**/ p_direction = 1}
			break;
		}
		else if(keyboard_check(obj_savemanager.cont_LEFT))  //left from stand
		{
			if(collision_rectangle(obj_player1.bbox_left-obj_savemanager.movespeed,obj_player1.bbox_top,obj_player1.bbox_right,obj_player1.bbox_bottom,obj_colBox,false,true))
			{
				_xplus = 0
				while(!collision_rectangle(obj_player1.bbox_left-_xplus,obj_player1.bbox_top,obj_player1.bbox_right,obj_player1.bbox_bottom,obj_colBox,false,true))
				{
					_xplus+=1
					if(collision_rectangle(obj_player1.bbox_left-_xplus,obj_player1.bbox_top,obj_player1.bbox_right,obj_player1.bbox_bottom,obj_colBox,false,true))
					{
						obj_player1.x -= (_xplus -1)
					}
				}
				left_hspd = 0
			}
			else
			{
				left_hspd = -obj_savemanager.movespeed
			}
			
			right_hspd = 0
			animation_state = "walk"
			physics_state = "walkL"
			obj_player1.image_xscale = -1
			if(p_animation_state != animation_state){obj_player1.image_index = 0}
			break;
		}
		else if(keyboard_check(obj_savemanager.cont_RIGHT))  //right from stand
		{
			if(collision_rectangle(obj_player1.bbox_left,obj_player1.bbox_top,obj_player1.bbox_right+obj_savemanager.movespeed,obj_player1.bbox_bottom,obj_colBox,true,true))
			{
				_yplus = 0
				while(collision_rectangle(obj_player1.bbox_left,obj_player1.bbox_top,obj_player1.bbox_right+obj_savemanager.movespeed,obj_player1.bbox_bottom-_yplus,obj_colBox,true,true) && _yplus <=obj_savemanager.movespeed)
				{
					_yplus+=1
				}
				if(collision_rectangle(obj_player1.bbox_left,obj_player1.bbox_top,obj_player1.bbox_right+obj_savemanager.movespeed,obj_player1.bbox_bottom-_yplus,obj_colBox,true,true))
				{
					while(!collision_rectangle(obj_player1.bbox_left,obj_player1.bbox_top,obj_player1.bbox_right+obj_savemanager.movespeed,obj_player1.bbox_bottom,obj_colBox,true,true))
					{
						right_hspd = obj_savemanager.movespeed
					}
					right_hspd = 0
				}
				else
				{
					obj_player1.y -=_yplus
				}
			}
			
			left_hspd = 0
			animation_state = "walk"
			physics_state = "walkR"
			obj_player1.image_xscale = 1
			if(p_animation_state != animation_state){obj_player1.image_index = 0}
		break;
		}
		else // idle
		{
			scr_nInput()
			animation_state = "idle"
			physics_state = "idle"
			break;
		}
	}
	case("walkL"):
	{
		if(keyboard_check(obj_savemanager.cont_DOWN))  //Crouch from stand
		{
			scr_nInput()
			animation_state = "crouch"
			physics_state = "crouch"
			if(p_animation_state != animation_state){obj_player1.image_index = 0}
			if(keyboard_check(obj_savemanager.cont_LEFT)){obj_player1.image_xscale=-1 /**/ p_direction = -1}
			else if(keyboard_check(obj_savemanager.cont_RIGHT)){obj_player1.image_xscale = 1 /**/ p_direction = 1}
			break;
		}
		else if(keyboard_check(obj_savemanager.cont_LEFT))  //left from stand
		{
			if(collision_rectangle(obj_player1.bbox_left-obj_savemanager.movespeed,obj_player1.bbox_top,obj_player1.bbox_right,obj_player1.bbox_bottom,obj_colBox,false,true))
			{
				_xplus = 0
				while(!collision_rectangle(obj_player1.bbox_left-_xplus,obj_player1.bbox_top,obj_player1.bbox_right,obj_player1.bbox_bottom,obj_colBox,false,true))
				{
					_xplus+=1
					if(collision_rectangle(obj_player1.bbox_left-_xplus,obj_player1.bbox_top,obj_player1.bbox_right,obj_player1.bbox_bottom,obj_colBox,false,true))
					{
						obj_player1.x -= (_xplus -1)
					}
				}
				left_hspd = 0
			}
			else
			{
				left_hspd = -obj_savemanager.movespeed
			}
			right_hspd = 0
			animation_state = "walk"
			physics_state = "walkL"
			obj_player1.image_xscale = -1
			if(p_animation_state != animation_state){obj_player1.image_index = 0}
			break;
		}
		else if(keyboard_check(obj_savemanager.cont_RIGHT))  //right from stand
		{
			if(collision_rectangle(obj_player1.bbox_left,obj_player1.bbox_top,obj_player1.bbox_right+obj_savemanager.movespeed,obj_player1.bbox_bottom,obj_colBox,false,true))
			{
				_xplus = 0
				while(!collision_rectangle(obj_player1.bbox_left,obj_player1.bbox_top,obj_player1.bbox_right+_xplus,obj_player1.bbox_bottom,obj_colBox,false,true))
				{
					_xplus+=1
					if(collision_rectangle(obj_player1.bbox_left,obj_player1.bbox_top,obj_player1.bbox_right+_xplus,obj_player1.bbox_bottom,obj_colBox,false,true))
					{
						obj_player1.x += (_xplus -1)
					}
				}
				right_hspd = 0
			}
			else
			{
				right_hspd = obj_savemanager.movespeed
			}
			left_hspd = 0
			animation_state = "walk"
			physics_state = "walkR"
			obj_player1.image_xscale = 1
			if(p_animation_state != animation_state){obj_player1.image_index = 0}
			break;
		}
		else // idle
		{
			scr_nInput()
			animation_state = "idle"
			physics_state = "idle"
			break;
		}
	}
	case("walkR"):
	{
		if(keyboard_check(obj_savemanager.cont_DOWN))  //Crouch from stand
		{
			scr_nInput()
			animation_state = "crouch"
			physics_state = "crouch"
			if(p_animation_state != animation_state){obj_player1.image_index = 0}
			if(keyboard_check(obj_savemanager.cont_LEFT)){obj_player1.image_xscale=-1 /**/ p_direction = -1}
			else if(keyboard_check(obj_savemanager.cont_RIGHT)){obj_player1.image_xscale = 1 /**/ p_direction = 1}
			break;
		}
		else if(keyboard_check(obj_savemanager.cont_LEFT))  //left from stand
		{
			
			if(collision_rectangle(obj_player1.bbox_left-obj_savemanager.movespeed,obj_player1.bbox_top,obj_player1.bbox_right,obj_player1.bbox_bottom,obj_colBox,false,true))
			{
				_xplus = 0
				while(!collision_rectangle(obj_player1.bbox_left-_xplus,obj_player1.bbox_top,obj_player1.bbox_right,obj_player1.bbox_bottom,obj_colBox,false,true))
				{
					_xplus+=1
					if(collision_rectangle(obj_player1.bbox_left-_xplus,obj_player1.bbox_top,obj_player1.bbox_right,obj_player1.bbox_bottom,obj_colBox,false,true))
					{
						obj_player1.x -= (_xplus -1)
					}
				}
				left_hspd = 0
			}
			else
			{
				left_hspd = -obj_savemanager.movespeed
			}
			
			right_hspd = 0
			animation_state = "walk"
			physics_state = "walkR"
			obj_player1.image_xscale = -1
			if(p_animation_state != animation_state){obj_player1.image_index = 0}
			break;
		}
		else if(keyboard_check(obj_savemanager.cont_RIGHT))  //right from stand
		{
			if(collision_rectangle(obj_player1.bbox_left,obj_player1.bbox_top,obj_player1.bbox_right+obj_savemanager.movespeed,obj_player1.bbox_bottom,obj_colBox,true,true))
			{
				_yplus = 0
				while(collision_rectangle(obj_player1.bbox_left,obj_player1.bbox_top,obj_player1.bbox_right+obj_savemanager.movespeed,obj_player1.bbox_bottom-_yplus,obj_colBox,true,true) && _yplus <=obj_savemanager.movespeed)
				{
					_yplus+=1
				}
				if(collision_rectangle(obj_player1.bbox_left,obj_player1.bbox_top,obj_player1.bbox_right+obj_savemanager.movespeed,obj_player1.bbox_bottom-_yplus,obj_colBox,true,true))
				{
					while(!collision_rectangle(obj_player1.bbox_left,obj_player1.bbox_top,obj_player1.bbox_right+obj_savemanager.movespeed,obj_player1.bbox_bottom,obj_colBox,true,true))
					{
						right_hspd = obj_savemanager.movespeed
					}
					right_hspd = 0
				}
				else
				{
					obj_player1.y -=_yplus
				}
			}
			left_hspd = 0
			animation_state = "walk"
			physics_state = "walkR"
			obj_player1.image_xscale = 1
			if(p_animation_state != animation_state){obj_player1.image_index = 0}
			break;
		}
		else // idle
		{
			scr_nInput()
			animation_state = "idle"
			physics_state = "idle"
			break;
		}
	}
	case("crouch"):
	{
		
		if(keyboard_check(obj_savemanager.cont_LEFT))  //left from crouch
		{
			if(keyboard_check_released(obj_savemanager.cont_DOWN))
			{
				physics_state = "walkL"
				animation_state = "walk"
				break;
			}
			right_hspd = 0
			animation_state = "crouch"
			obj_player1.image_xscale = -1
			break;
		}
		else if(keyboard_check(obj_savemanager.cont_RIGHT))  //right from crouch
		{
			if(keyboard_check_released(obj_savemanager.cont_DOWN))
			{
				physics_state = "walkR"
				animation_state = "walk"
				break;
			}
			left_hspd = 0
			animation_state = "crouch"
			obj_player1.image_xscale = 1
			break;
		}
		else if(keyboard_check(obj_savemanager.cont_DOWN))  //crouch
		{
			animation_state = "crouch"
			physics_state = "crouch"
			break;
		}
		else   //anything else
		{
			animation_state = "idle"
			physics_state = "idle"
			break;
		}
	}
}
//Managing grounded vs. aerial state

//calculating hspd
hspd = left_hspd + right_hspd
//applying hspd and vspd
obj_player1.x += hspd
p_physics_state = physics_state
p_animation_state = animation_state
keyboard_key_debug = keyboard_key