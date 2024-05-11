throw_height = 5
throw_length = 1
grav = 0.125
owner = instance_place(x,y,obj_groundedParentEnemy)
hspd = throw_length * sign(owner.image_xscale)
vspd = throw_height
