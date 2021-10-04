objShakeEffect.shake = true;
objShakeEffect.range = 2;
objShakeEffect.alarm[0] = room_speed/4;

part_particles_create(global.particlesSys, x, y, global.quanticParticle, 1);
part_particles_create(global.particlesSys, x, y, global.quanticParticle, irandom_range(7, 15));
part_particles_create(global.particlesSys, x, y, global.quanticParticle, irandom_range(3, 8));

lastPoint = {x: x, y: y};
y = 10000;

alarm[0] = room_speed;
