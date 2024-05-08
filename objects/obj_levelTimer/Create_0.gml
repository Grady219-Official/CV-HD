starting_time = 30
level_timer_minutes = starting_time
level_timer_seconds = 0
level_timer_seconds_display = level_timer_seconds
level_timer_centiseconds = 0
level_timer_centiseconds_display = level_timer_centiseconds
scale = 1
secondTimer = function(_value)
{
	switch(_value)
	{
	
		case 0:
		{
			return "00"
		break;
		}
		case 1:
		{
			return "01"
		break;
		}
		case 2:
		{
			return "02"
		break;
		}
		case 3:
		{
			return "03"
		break;
		}
		case 4:
		{
			return "04"
		break;
		}
		case 5:
		{
			return "05"
		break;
		}
		case 6:
		{
			return "06"
		break;
		}
		case 7:
		{
			return "07"
		break;
		}
		case 8:
		{
			return "08"
		break;
		}
		case 9:
		{
			return "09"
		break;
		}
		default:
		{
			return _value
		}
	}
}
map_string = "0123456789";
timer_fontBig = font_add_sprite_ext(spr_timer_fontBig,map_string, true, 5)
map_string = "0123456789:.";
timer_fontSmall = font_add_sprite_ext(spr_timer_fontSmall,map_string, true, 5)