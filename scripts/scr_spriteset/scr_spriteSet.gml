// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_spriteSet(_character){
move_collide_redone.anim_idle     = -1
move_collide_redone.anim_walk     = -1
move_collide_redone.anim_jumpU    = -1
move_collide_redone.anim_jumpF    = -1
move_collide_redone.anim_jumpA    = -1
move_collide_redone.anim_fall     = -1
move_collide_redone.anim_crouch   = -1
move_collide_redone.anim_slide    = -1
move_collide_redone.anim_diveDF   = -1
move_collide_redone.anim_diveD    = -1
move_collide_redone.anim_backdash = -1
switch (_character)
	{
	case "Soma":
		{
			move_collide_redone.anim_idle     = spr_Soma_idle 
			move_collide_redone.anim_walk     = spr_Soma_walk
			move_collide_redone.anim_jumpU    = spr_Soma_jumpU
			move_collide_redone.anim_jumpF    = spr_Soma_jumpF
			move_collide_redone.anim_jumpA    = spr_Soma_jumpA
			move_collide_redone.anim_fall     = spr_Soma_fall
			move_collide_redone.anim_crouch   = spr_Soma_crouch
			move_collide_redone.anim_slide    = spr_Soma_slide
			move_collide_redone.anim_diveDF   = spr_Soma_divekickDF
			move_collide_redone.anim_backdash = spr_Soma_backdash
		break;
		}
	case "Alucard":
		{
			move_collide_redone.anim_idle     = spr_Alu_idle
			move_collide_redone.anim_walk     = spr_Alu_walk
			move_collide_redone.anim_crouch   = spr_Alu_crouch
			move_collide_redone.anim_jumpU    = spr_Alu_jumpU
			move_collide_redone.anim_fall     = spr_Alu_fall
			move_collide_redone.anim_jumpF    = spr_Alu_jumpF
			move_collide_redone.anim_jumpA    = spr_Alu_jumpA
			move_collide_redone.anim_slide    = spr_Alu_slide
			move_collide_redone.anim_diveD    = spr_Alu_divekickD
			move_collide_redone.anim_diveDF   = spr_Alu_divekickDF
			move_collide_redone.anim_backdash = spr_Alu_backdash
		break;
		}
	case "Jonathan":
		{
			move_collide_redone.anim_idle     = spr_Jon_idle
			move_collide_redone.anim_walk     = spr_Jon_walk
			move_collide_redone.anim_jumpU    = spr_Jon_jumpU
			move_collide_redone.anim_jumpF    = spr_Jon_jumpF
			move_collide_redone.anim_jumpA    = spr_Jon_jumpA
			move_collide_redone.anim_fall     = spr_Jon_fall
			move_collide_redone.anim_crouch   = spr_Jon_crouch
			move_collide_redone.anim_slide    = spr_Jon_slide
			move_collide_redone.anim_diveD    = spr_Jon_divekickD
			move_collide_redone.anim_diveDF   = spr_Jon_divekickDF
			move_collide_redone.anim_backdash = spr_Jon_backdash
		break;
		}
	case "Charlotte":
		{
			move_collide_redone.anim_idle     = spr_Char_idle
			move_collide_redone.anim_walk     = spr_Char_walk
			move_collide_redone.anim_diveDF   = spr_Char_diveDF
			move_collide_redone.anim_crouch   = spr_Char_crouch
			move_collide_redone.anim_slide    = spr_Char_slide
			move_collide_redone.anim_jumpU    = spr_Char_jumpU
			move_collide_redone.anim_jumpF    = spr_Char_jumpF			
			move_collide_redone.anim_jumpA    = spr_Char_jumpA
			move_collide_redone.anim_fall     = spr_Char_fall
			move_collide_redone.anim_backdash = spr_Char_backdash
			
		break;
		}
	case "Shanoa":
		{
			move_collide_redone.anim_idle     = spr_Shan_idle
			move_collide_redone.anim_walk     = spr_Shan_walk
			move_collide_redone.anim_crouch   = spr_Shan_crouch
			move_collide_redone.anim_slide    = spr_Shan_slide
			move_collide_redone.anim_jumpU    = spr_Shan_jumpU
			move_collide_redone.anim_jumpF    = spr_Shan_jumpF
			move_collide_redone.anim_jumpA    = spr_Shan_jumpA
			move_collide_redone.anim_fall     = spr_Shan_fall
			move_collide_redone.anim_diveD    = spr_Shan_divekickD
			move_collide_redone.anim_diveDF   = spr_Shan_divekickDF
			move_collide_redone.anim_backdash = spr_Shan_backdash
		break;
		}
	case "Maria":
		//{
		//	obj_player1.sprite_index = spr_menuMaria
		//break;
		//}
	}
	if(move_collide_redone.anim_idle     = -1)   {move_collide_redone.anim_idle     = spr_error}
	if(move_collide_redone.anim_walk     = -1)   {move_collide_redone.anim_walk     = spr_error}
	if(move_collide_redone.anim_jumpU    = -1)   {move_collide_redone.anim_jumpU    = spr_error}
	if(move_collide_redone.anim_jumpF    = -1)   {move_collide_redone.anim_jumpF    = spr_error}
	if(move_collide_redone.anim_jumpA    = -1)   {move_collide_redone.anim_jumpA    = spr_error}
	if(move_collide_redone.anim_fall     = -1)   {move_collide_redone.anim_fall     = spr_error}
	if(move_collide_redone.anim_crouch   = -1)   {move_collide_redone.anim_crouch   = spr_error}
	if(move_collide_redone.anim_slide    = -1)   {move_collide_redone.anim_slide    = spr_error}
	if(move_collide_redone.anim_diveDF   = -1)   {move_collide_redone.anim_diveDF   = spr_error}
	if(move_collide_redone.anim_backdash = -1)   {move_collide_redone.anim_backdash = spr_error}
	if(move_collide_redone.anim_diveD   = -1)    {move_collide_redone.anim_diveD    = spr_error}
}