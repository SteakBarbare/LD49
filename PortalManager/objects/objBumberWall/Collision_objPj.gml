if(!isMoving)
{
	var isAligned = objPj.etat == etatId.BUMP || ((dir == 0 && objPj.y >= y) || (dir == 1 && objPj.y <= y) || (dir == 2 && objPj.x <= x) || (dir == 3 && objPj.x >= x))
	if(isAligned)
	{
		objPj.etat = etatId.BUMP;
		if(dir == 3)
		{
			objPj.dir = directionId.RIGHT;
		}
		else
		{
			objPj.dir = dir;
		}
		objPj.superBump = superBump;
		objPj.bumpStrength = strength;
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

		part_particles_create(global.particlesSys, x + irandom_range(-10, 10), y + irandom_range(-10, 10), global.destructionSmoke, 1);
		part_particles_create(global.particlesSys, x + irandom_range(-10, 10), y + irandom_range(-10, 10), global.destructionSmokeTiny, irandom_range(7, 15));
		part_particles_create(global.particlesSys, x + irandom_range(-10, 10), y - irandom(10), global.destructionPottery, irandom_range(3, 8));
	
		var rubbishNumb = irandom_range(15, 30);
		repeat(rubbishNumb)
		{
			instance_create_depth(x + irandom_range(-10, 10), y + irandom_range(-10, 10), 1, objCharredDirtFx);
		}
	}
}
