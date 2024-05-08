/// @description Insert description here
// You can write your code in this editor


costMP = 10
costMPscale = costMP/maxMP * xscale
startMP = currentMP
if(!(startMP - costMP < 0))
{
	endMP = startMP - costMP
	endMPscale = endMP/maxMP * xscale
	currentMP -= costMP
	instance_create_depth(x+endMPscale,y,0,obj_barDrain)
}
