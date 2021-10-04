if(!invulnerable)
{
	objMusic.mobsSound[2][1]++; 
	invulnerable = true;
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
	switch(dir)
	{
		case directionId.FRONT:
			vspeed = vSpeed;
			break;
		case directionId.BACK:
			vspeed = -vSpeed;
			break;
		case directionId.LEFT:
			hspeed = -hSpeed;
			break;
		case directionId.BACK_LEFT:
			hspeed = -hSpeed;
			vspeed = -vSpeed;
			break;
		case directionId.FRONT_LEFT:
			hspeed = -hSpeed;
			vspeed = vSpeed;
			break;
		case directionId.RIGHT:
			hspeed = hSpeed;
			break;
		case directionId.FRONT_RIGHT:
			hspeed = hSpeed;
			vspeed = vSpeed;
			break;
		case directionId.BACK_RIGHT:
			hspeed = hSpeed;
			vspeed = -vSpeed;
			break;
	}

	hspeed *= 10;
	vspeed *= 10;

	alarm[1] = room_speed * 0.1;
	alarm[2] = room_speed * 0.1;
}