//Get player input

#region check y axis
if (keyboard_check(key_up)) {
    y_axis = -1
} else if (keyboard_check(key_down)) {
    y_axis = 1
} else {
    y_axis = 0
}
#endregion
#region check x axis
if (keyboard_check(key_left)) {
    x_axis = -1
} else if (keyboard_check(key_right)) {
    x_axis = 1
} else {
    x_axis = 0
}
#endregion
//  Get non-directional button input


//update input history
#region
input_history[input_index] = [x_axis,y_axis]
input_index = (input_index + 1) % array_length(input_history)
#endregion


//Ground check
if(place_meeting(x,y+1,obj_colBox) || place_meeting(x,y+vspd,obj_colBox)){onGround = true}
else{onGround = false}
//Update states based on previous states and input

prev_p1_physics_state = p1_physics_state
#region
switch x_axis
{
	case -1: //left
	{
		switch y_axis // up
		{
			case -1:  //up left
			{
			p1_physics_state = "walk"
			p1_direction = sign(x_axis)
			break;
			}
			case 0: // neutral left
			{
			p1_physics_state = "walk"
			p1_direction = sign(x_axis)
			break;
			}
			case 1:  //down left
			{
			p1_physics_state = "crouch"
			p1_direction = sign(x_axis)
			break;
			}
		}
		break;
	}
	case 0: //neutral
	{
		switch y_axis //
		{
			case -1:  //neutral up
			{
			p1_physics_state = "taunt"
			p1_direction = sign(x_axis)
			break;
			}
			case 0: //neutral neutral
			{
			p1_physics_state = "idle"
			break;
			}
			case 1:  //neutral down
			{
			p1_physics_state = "crouch"
			break;
			}
		}
		break;
	}
	case 1: //right
	{
		switch y_axis //
		{
			case -1:  //right up
			{
			p1_physics_state = "walk"
			p1_direction = sign(x_axis)
			break;
			}
			case 0: //right neutral
			{
			p1_physics_state = "walk"
			p1_direction = sign(x_axis)
			break;
			}
			case 1:  //right down
			{
			p1_physics_state = "crouch"
			p1_direction = sign(x_axis)
			break;
			}
		}
		break;
	}
}
#endregion

//Execute states based on previous states and current state


//
switch (p1_physics_state)
{
	case "idle":
	{
		hspd = 0
		break;
	}
	case "walk":
	{
		//if(place_meeting(x+(p1_direction*move_speed),y,obj_colBox))  //wall collision
		//{
		//	if((!place_meeting(x+(p1_direction*move_speed),y-1,obj_colBox)))  //slope check
		//	{
		//		if(x_axis > 0)
		//		{
		//			_lengthx = ceil(lengthdir_x(move_speed*x_axis,x_axis * 45))
		//		}
		//		else
		//		{
		//			_lengthx = floor(lengthdir_x(move_speed*x_axis,x_axis * 45))
		//		}
		//		_lengthy = floor(lengthdir_y(move_speed*x_axis,x_axis * 45))
		//		x+=_lengthx
		//		y+=_lengthy
		//		hspd = 0
		//	}
		//	else
		//	{
		//		hspd = 0
		//	}
		//}
		
		//else
		//{
		//	hspd = p1_direction * move_speed
		//}
		if place_meeting(x+hspd,y,obj_colBox)
		{
		    yplus = 0;
		    while (place_meeting(x+hspd,y-yplus,obj_colBox) && yplus <= abs(1*hspd)) yplus += 1;
		    if place_meeting(x+hspd,y-yplus,obj_colBox)
		    {
		        while (!place_meeting(x+sign(hspd),y,obj_colBox)) x+=sign(hspd);
		        hspd = 0;
		    }
		    else
		    {
		        y -= yplus
		    }
		}
		hspd = move_speed*p1_direction;

		// Downward slopes
		if !place_meeting(x,y,obj_colBox) && vspd >= 0 && place_meeting(x,y+2+abs(hspd),obj_colBox)
		{while(!place_meeting(x,y+1,obj_colBox)) {y += 1;}}
	break;
	}
	case "jumpU":
	{
		break;
	}
	case "jumpF":
	{
	
	}
	case "airjumpU":
	{
	
	}
	case "airjumpF":
	{
	
	}
	case "crouch":
	{
		hspd = 0
		break;
	}
	case "slide":
	{
		
	}
	case "diveD":
	{
		
	}
	case "diveF":
	{
	
	}
	case "atkswing":
	{
	
	}
	case "weaponSP":
	{
	
	}
	case "airatkswing":
	{
	
	}
	case "crouchatkswing":
	{
	
	}
	case "subweapon":
	{
		
	}
	case "mArt":
	{
		
	}
	case "backdash":
	{
	
	}
	case "holdU":
	{
	
	}
	case "holdUspec":
	{
	
	}
	case "dcReady":
	{
	
	}
	case "dcActivate":
	{
	
	}
	case "damageL":
	{
	
	}
	case "damageH":
	{
	
	}
	case "crouchDamageL":
	{
	
	}
	case "crouchDamageH":
	{
	
	}
	case "airDamageL":
	{
	
	}
	case "airDamageH":
	{
	
	}
	case "death":
	{
	
	}
}

if(onGround = false)
{
	if(place_meeting(x,y+(vspd+grav),obj_colBox)){vspd = 0}
	else{vspd+=grav}
}
else
{vspd = 0}

//Animation state machine

//End physics calculations
#region
image_xscale = p1_direction
x+=hspd
y+=vspd
#endregion