if(!invulnerable)
{
	life--;
	if(life == 1)
	{
		objShakeEffect.shake = true;
		objShakeEffect.range = 2;
		objShakeEffect.alarm[0] = room_speed/4;
	}
	else
	{
		objShakeEffect.shake = true;
		objShakeEffect.range = 10;
		objShakeEffect.alarm[0] = room_speed/4;
	}

	etat = etatId.BUMP;
	dir = objPj.dir;
	bumpStart = false;
	bumpStrength = 10;
	alarm[7] = room_speed * 0.11;
	invulnerable = true;
}