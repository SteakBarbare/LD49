event_inherited()
if(prevX < x)
{
	image_xscale = 1;
}
else
{
	image_xscale = -1;
}
if(life > 0)
{
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
}


if(life <= 0)
{
	if(sprite_index != sprCrabDed)
	{
		sprite_index = sprCrabDed;
	}
	else if(image_number - 1 <= image_index)
	{
		instance_destroy();
	}
}