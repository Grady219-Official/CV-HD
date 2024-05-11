// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_spriteSet(_character){
obj_PL_1.anim_idle     = -1
obj_PL_1.anim_walk     = -1
obj_PL_1.anim_jumpU    = -1
obj_PL_1.anim_jumpF    = -1
obj_PL_1.anim_jumpA    = -1
obj_PL_1.anim_fall     = -1
obj_PL_1.anim_crouch   = -1
obj_PL_1.anim_slide    = -1
obj_PL_1.anim_diveDF   = -1
obj_PL_1.anim_diveD    = -1
obj_PL_1.anim_backdash = -1
switch (_character)
	{
	case "Soma":
		{
			obj_PL_1.anim_idle     = spr_Soma_idle 
			obj_PL_1.anim_walk     = spr_Soma_walk
			obj_PL_1.anim_jumpU    = spr_Soma_jumpU
			obj_PL_1.anim_jumpF    = spr_Soma_jumpF
			obj_PL_1.anim_jumpA    = spr_Soma_jumpA
			obj_PL_1.anim_fall     = spr_Soma_fall
			obj_PL_1.anim_crouch   = spr_Soma_crouch
			obj_PL_1.anim_slide    = spr_Soma_slide
			obj_PL_1.anim_diveDF   = spr_Soma_divekickDF
			obj_PL_1.anim_backdash = spr_Soma_backdash
		break;
		}
	case "Alucard":
		{
			obj_PL_1.anim_idle     = spr_Alu_idle
			obj_PL_1.anim_walk     = spr_Alu_walk
			obj_PL_1.anim_crouch   = spr_Alu_crouch
			obj_PL_1.anim_jumpU    = spr_Alu_jumpU
			obj_PL_1.anim_fall     = spr_Alu_fall
			obj_PL_1.anim_jumpF    = spr_Alu_jumpF
			obj_PL_1.anim_jumpA    = spr_Alu_jumpA
			obj_PL_1.anim_slide    = spr_Alu_slide
			obj_PL_1.anim_diveD    = spr_Alu_divekickD
			obj_PL_1.anim_diveDF   = spr_Alu_divekickDF
			obj_PL_1.anim_backdash = spr_Alu_backdash
		break;
		}
	case "Jonathan":
		{
			obj_PL_1.anim_idle     = spr_Jon_idle
			obj_PL_1.anim_walk     = spr_Jon_walk
			obj_PL_1.anim_jumpU    = spr_Jon_jumpU
			obj_PL_1.anim_jumpF    = spr_Jon_jumpF
			obj_PL_1.anim_jumpA    = spr_Jon_jumpA
			obj_PL_1.anim_fall     = spr_Jon_fall
			obj_PL_1.anim_crouch   = spr_Jon_crouch
			obj_PL_1.anim_slide    = spr_Jon_slide
			obj_PL_1.anim_diveD    = spr_Jon_divekickD
			obj_PL_1.anim_diveDF   = spr_Jon_divekickDF
			obj_PL_1.anim_backdash = spr_Jon_backdash
		break;
		}
	case "Charlotte":
		{
			obj_PL_1.anim_idle     = spr_Char_idle
			obj_PL_1.anim_walk     = spr_Char_walk
			obj_PL_1.anim_diveDF   = spr_Char_diveDF
			obj_PL_1.anim_crouch   = spr_Char_crouch
			obj_PL_1.anim_slide    = spr_Char_slide
			obj_PL_1.anim_jumpU    = spr_Char_jumpU
			obj_PL_1.anim_jumpF    = spr_Char_jumpF			
			obj_PL_1.anim_jumpA    = spr_Char_jumpA
			obj_PL_1.anim_fall     = spr_Char_fall
			obj_PL_1.anim_backdash = spr_Char_backdash
			
		break;
		}
	case "Shanoa":
		{
			obj_PL_1.anim_idle     = spr_Shan_idle
			obj_PL_1.anim_walk     = spr_Shan_walk
			obj_PL_1.anim_crouch   = spr_Shan_crouch
			obj_PL_1.anim_slide    = spr_Shan_slide
			obj_PL_1.anim_jumpU    = spr_Shan_jumpU
			obj_PL_1.anim_jumpF    = spr_Shan_jumpF
			obj_PL_1.anim_jumpA    = spr_Shan_jumpA
			obj_PL_1.anim_fall     = spr_Shan_fall
			obj_PL_1.anim_diveD    = spr_Shan_divekickD
			obj_PL_1.anim_diveDF   = spr_Shan_divekickDF
			obj_PL_1.anim_backdash = spr_Shan_backdash
		break;
		}
	case "Maria":
		//{
		//	obj_player1.sprite_index = spr_menuMaria
		//break;
		//}
	}
	if(obj_PL_1.anim_idle     = -1)   {obj_PL_1.anim_idle     = spr_error}
	if(obj_PL_1.anim_walk     = -1)   {obj_PL_1.anim_walk     = spr_error}
	if(obj_PL_1.anim_jumpU    = -1)   {obj_PL_1.anim_jumpU    = spr_error}
	if(obj_PL_1.anim_jumpF    = -1)   {obj_PL_1.anim_jumpF    = spr_error}
	if(obj_PL_1.anim_jumpA    = -1)   {obj_PL_1.anim_jumpA    = spr_error}
	if(obj_PL_1.anim_fall     = -1)   {obj_PL_1.anim_fall     = spr_error}
	if(obj_PL_1.anim_crouch   = -1)   {obj_PL_1.anim_crouch   = spr_error}
	if(obj_PL_1.anim_slide    = -1)   {obj_PL_1.anim_slide    = spr_error}
	if(obj_PL_1.anim_diveDF   = -1)   {obj_PL_1.anim_diveDF   = spr_error}
	if(obj_PL_1.anim_backdash = -1)   {obj_PL_1.anim_backdash = spr_error}
	if(obj_PL_1.anim_diveD   = -1)    {obj_PL_1.anim_diveD    = spr_error}
}