event_inherited();
show_debug_message(factor)
image_alpha = factor;
image_blend = merge_color(initialColor, finalColor, 0.5);

if(factor < 0.25) 
{
	factor += room_speed / 1000000;
}


