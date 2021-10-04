event_inherited();
image_alpha = factor;
image_blend = merge_color(initialColor, finalColor, 0.5);

if(factor < 0.25) 
{
	factor += room_speed / 1000000;
}


