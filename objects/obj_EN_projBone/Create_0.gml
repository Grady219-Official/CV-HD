throw_height = 5
rotation = irandom_range(-10,-1)
throw_length = 1
grav = 0.125
owner = instance_place(x,y,obj_EN_skeleton)
hspd = throw_length * sign(owner.image_xscale)
vspd = throw_height
