/// @description Insert description here
// You can write your code in this editor
//Input register
key_up = ord("W")
key_left = ord("A")
key_down = ord("S")
key_right = ord("D")

x_axis = 0
y_axis = 0

//input history array
input_history = array_create(10,0)
input_index = 0


move_speed = 1
p1_direction = 1
hspd = 0
vspd = 0
grav = 1
jump_strength = 4
p1_physics_state = "idle"
prev_p1_physics_state = "idle"
p1_animation_state = "idle"
prev_p1_animation_state = "idle"
p1_ground_state = "grounded"
prev_p1_ground_state = "grounded"
p1_max_jump = 2
p1_current_jump = 0
onGround = false
