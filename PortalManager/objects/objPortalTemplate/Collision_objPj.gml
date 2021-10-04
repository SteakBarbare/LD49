if(objKeybind.eKey && !isActivated)
{
	objMusic.portalsSound[0][1] = 1;
	objMusic.timerSound[0][1] = 1;
	alarm[1] = room_speed * 0.1;
	var pColor = c_green;
	if(partType == "Obstacle")
	{
		part_particles_create(global.particlesSys, x, y, global.obstaclePortal, 1);
		part_particles_create(global.particlesSys, x, y, global.obstaclePortal, irandom_range(7, 15));
		part_particles_create(global.particlesSys, x, y, global.obstaclePortal, irandom_range(3, 8));
		pColor = c_blue;
	}
	else if(partType == "Monster")
	{
		part_particles_create(global.particlesSys, x, y, global.monsterPortal, 1);
		part_particles_create(global.particlesSys, x, y, global.monsterPortal, irandom_range(7, 15));
		part_particles_create(global.particlesSys, x, y, global.monsterPortal, irandom_range(3, 8));
		pColor = c_red;
	}
	else if(partType == "Debuff")
	{
		part_particles_create(global.particlesSys, x, y, global.debuffPortal, 1);
		part_particles_create(global.particlesSys, x, y, global.debuffPortal, irandom_range(7, 15));
		part_particles_create(global.particlesSys, x, y, global.debuffPortal, irandom_range(3, 8));
		pColor = c_green;
	}
	
	light = instance_create_depth(x, y, depth, objLight);
	light.finalColor = pColor;
	light.initialColor = pColor;
	light.factor = 0.1;
	light.alarm[0] = room_speed * (nbInvoc + 1);
}