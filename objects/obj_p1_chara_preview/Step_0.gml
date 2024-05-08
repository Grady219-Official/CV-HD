/// @description Insert description here
// You can write your code in this editor

if (visible=false && obj_menucontroller.current_menu = "local_play")
{
	visible = true
}
else if(obj_menucontroller.current_menu != "local_play")
{
	visible = false
}


if (image_index!=set_sprite_index)
{
	switch(obj_savemanager.current_character)
{
	case "Soma":
	{
		sprite_index = spr_Soma_walk
		set_sprite_index = sprite_index
		break;
	}
	case "Alucard":
	{
		sprite_index = spr_Alu_walk
		image_speed = 2
		set_sprite_index = sprite_index
		break;
	}
	case "Jonathan":
	{
		sprite_index = spr_Jon_walk
		image_speed = 2
		set_sprite_index = sprite_index
		break;
	}
	case "Julius":
	{
		sprite_index = spr_menuJulius
		set_sprite_index = sprite_index
		break;
	}
	case "Richter":
	{
		sprite_index = spr_menuRichter
		set_sprite_index = sprite_index
		break;
	}
	case "Shanoa":
	{
		sprite_index = spr_menuShanoa
		set_sprite_index = sprite_index
		break;
	}
	case "Charlotte":
	{
		sprite_index = spr_Char_walk
		image_speed = 2
		set_sprite_index = sprite_index
		break;
	}
	case "Yoko":
	{
		sprite_index = spr_menuYoko
		set_sprite_index = sprite_index
		break;
	}
	case "Maria":
	{
		sprite_index = spr_menuMaria
		set_sprite_index = sprite_index
		break;
	}
	case "Simon":
	{
		sprite_index = spr_menuSimon
		set_sprite_index = sprite_index
		break;
	}
	case "Fuma":
	{
		sprite_index = spr_menuFuma
		set_sprite_index = sprite_index
		break;
	}
}
image_speed = 2
}