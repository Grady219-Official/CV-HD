image_angle -= (rotation * sign(hspd))
vspd -= grav
y-=vspd
x+=hspd

if(place_meeting(x,y+1,obj_colBox))
{
	instance_destroy(self)
}