if(alarm[0] <= 0)
{
	alarm[0] = 1
}
if(level_timer_centiseconds < 0)
{
	level_timer_centiseconds += 100
	level_timer_seconds -=1
}
if(level_timer_seconds < 0)
{
	level_timer_seconds += 60
	level_timer_minutes -=1
}
if(level_timer_centiseconds = 100)
{
	level_timer_centiseconds_display = 0
}
else
{level_timer_centiseconds_display = level_timer_centiseconds}
if(level_timer_seconds = 60)
{
	level_timer_seconds_display = 0
}
else
{level_timer_seconds_display = level_timer_seconds}