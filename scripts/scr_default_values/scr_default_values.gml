// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_default_values(){
	switch(current_character)
	{
		case "Soma":
		{
			#region //Attack stats
			atk = 1
			def = 2
			str = 5
			con = 5
			int = 5
			mnd = 5
			lck = 5
			#endregion
			#region //Defense stats
			strike_resist = 0
			slash_resist = 0
			pierce_resist = 0
			fire_resist = 0
			ice_resist = 0
			lightning_resist = 0
			earth_resist = 0
			light_resist = 0
			dark_resist = 0
			curse_resist = 0
			poison_resist = 0
			#endregion
		}
	}
}