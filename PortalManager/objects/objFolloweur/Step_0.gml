event_inherited()
if(prevX < x)
{
	image_xscale = 1;
}
else
{
	image_xscale = -1;
}
prevX = x;
if(distance_to_object(objPj) < 100 && (etat == etatId.WALK || etat == etatId.KICK))
{
	if(sprite_index != sprCrabWalk)
	{
		sprite_index = sprCrabWalk;
		image_index = 0;
	}
	mp_potential_step_object(objPj.x, objPj.y, hSpeed, objSolidTemplate)
}
else
{
	if(sprite_index != sprCrabIdle)
	{
		sprite_index = sprCrabIdle;
		image_index = 0;
	}
}



if(life == 0 && death)
{
	death = false;
	alarm[0] = room_speed * 0.1;
}