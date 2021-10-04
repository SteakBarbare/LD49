if(partType == "Obstacle")
{
	part_particles_create(global.particlesSys, x, y, global.obstaclePortal, 1);
	part_particles_create(global.particlesSys, x, y, global.obstaclePortal, irandom_range(7, 15));
	part_particles_create(global.particlesSys, x, y, global.obstaclePortal, irandom_range(3, 8));
}
else if(partType == "Monster")
{
	part_particles_create(global.particlesSys, x, y, global.monsterPortal, 1);
	part_particles_create(global.particlesSys, x, y, global.monsterPortal, irandom_range(7, 15));
	part_particles_create(global.particlesSys, x, y, global.monsterPortal, irandom_range(3, 8));
}
else if(partType == "Debuff")
{
	part_particles_create(global.particlesSys, x, y, global.debuffPortal, 1);
	part_particles_create(global.particlesSys, x, y, global.debuffPortal, irandom_range(7, 15));
	part_particles_create(global.particlesSys, x, y, global.debuffPortal, irandom_range(3, 8));
}


if(!isActivated)
{
	
	var delta;
	if(objCore.nbPortal < 10)
	{
		delta = objCore.nbPortal/10 
	}
	else
	{
		delta = 1 - (objCore.nbPortal/10 - 1)
	}
	
	if(delta < 0.3) delta = 0.3;
	objCore.alarm[0] += room_speed * 10 * delta;
}

objMusic.portalsSound[1][1] = 1;