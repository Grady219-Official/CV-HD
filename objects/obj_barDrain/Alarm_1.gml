if(alarm[1]>-1)
{
	image_xscale -=8
	alarm[1] = 1
}
if(image_xscale<= 0)
instance_destroy()