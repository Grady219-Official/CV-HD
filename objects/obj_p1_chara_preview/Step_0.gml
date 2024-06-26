/// @description Insert description here
// You can write your code in this editor

if (visible=false && obj_menucontroller.current_menu = "Local Play")
{
	visible = true
}
else if(obj_menucontroller.current_menu != "Local Play")
{
	visible = false
}


if (image_index!=set_sprite_index)
{
	switch(obj_savemanager.current_character)
{
	case "Soma Cruz":
	{
		palette = spr_Soma_palette
		sprite_index = spr_Soma_walk
		set_sprite_index = sprite_index
		break;
	}
	case "Alucard":
	{
		palette = spr_Alucard_palette
		sprite_index = spr_Alu_walk
		image_speed = 2
		set_sprite_index = sprite_index
		break;
	}
	case "Jonathan Morris":
	{
		palette = spr_Jonathan_palette
		sprite_index = spr_Jon_walk
		image_speed = 2
		set_sprite_index = sprite_index
		break;
	}
	case "Julius Belmont":
	{
		//palette = spr_Julius_palette
		sprite_index = spr_menuJulius
		set_sprite_index = sprite_index
		break;
	}
	case "Richter Belmont":
	{
		//palette = spr_Richter_palette
		sprite_index = spr_menuRichter
		set_sprite_index = sprite_index
		break;
	}
	case "Shanoa":
	{
		palette = spr_Shanoa_palette
		sprite_index = spr_menuShanoa
		set_sprite_index = sprite_index
		break;
	}
	case "Charlotte Aulin":
	{
		palette = spr_Charlotte_palette
		sprite_index = spr_Char_walk
		image_speed = 2
		set_sprite_index = sprite_index
		break;
	}
	case "Yoko Belnades":
	{
		//palette = spr_Yoko_palette
		sprite_index = spr_menuYoko
		set_sprite_index = sprite_index
		break;
	}
	case "Maria Renard":
	{
		//palette = spr_Maria_palette
		sprite_index = spr_menuMaria
		set_sprite_index = sprite_index
		break;
	}
	case "Simon Belmont":
	{
		//palette = spr_Simon_palette
		sprite_index = spr_menuSimon
		set_sprite_index = sprite_index
		break;
	}
	case "Getsu Fuma":
	{
		//palette = spr_Fuma_palette
		sprite_index = spr_menuFuma
		set_sprite_index = sprite_index
		break;
	}
}
image_speed = 2
}
color = obj_savemanager.current_color