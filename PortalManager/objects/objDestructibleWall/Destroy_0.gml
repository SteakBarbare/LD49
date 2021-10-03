part_particles_create(global.particlesSys, x + irandom_range(-10, 10), y + irandom_range(-10, 10), global.destructionSmoke, 1);
part_particles_create(global.particlesSys, x + irandom_range(-10, 10), y + irandom_range(-10, 10), global.destructionSmokeTiny, irandom_range(7, 15));
part_particles_create(global.particlesSys, x + irandom_range(-10, 10), y - irandom(10), global.destructionPottery, irandom_range(3, 8));
	
var rubbishNumb = irandom_range(15, 30);
repeat(rubbishNumb)
{
	instance_create_depth(x + irandom_range(-10, 10), y + irandom_range(-10, 10), 1, objPotteryRubbish);
}