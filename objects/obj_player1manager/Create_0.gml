//Setting stage spawn coords
scr_loadStage(obj_savemanager.current_chapter,obj_savemanager.current_difficulty)
hspd = 0
scr_nInput()

//Spawning player with correct character
instance_create_depth(levelData.player1SpawnX,levelData.player1SpawnY,200,obj_player1)
obj_player1.image_speed = 0.6
scr_spriteSet(obj_savemanager.current_character)
//Creating animation state variable
p_animation_state = ""
animation_state = "idle"
p_physics_state = ""
physics_state = "idle"
p_direction = 1