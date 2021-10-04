show_debug_message("explosion")
var signe = irandom(2) - 1;

objShakeEffect.shake = true;
objShakeEffect.range = 2;
objShakeEffect.alarm[0] = room_speed/4;

while(signe == 0)
{
	show_debug_message("boucle signe1")
	signe = irandom(2) - 1;
}
var n = 100;
var newPoint = {x : lastPoint.x + ((irandom(range) + range)*signe)/2, y: lastPoint.y + ((irandom(range) + range)*signe)/2};
while(place_meeting(newPoint.x, newPoint.y, objSolidTemplate) || (
newPoint.x <= 0 + sprite_width/2 || newPoint.x >= 960 - sprite_width/2 ||
newPoint.y <= 0 + sprite_height/2|| newPoint.y >= 540 - sprite_height/2))
{
	
	if(n == 0)
	{
		break;
	}
	show_debug_message("boucle newPoint QuanticWall")
	var signe = irandom(2) - 1;
	while(signe == 0)
	{
		show_debug_message("boucle signe 2")
		signe = irandom(2) - 1;
	}
	var newPoint = {x : lastPoint.x + ((irandom_range(0, range) + range)*signe)/2, y: lastPoint.y + ((irandom_range(0, range) + range)*signe)/2};
	n--;
}
if(n==0)
{
	newPoint = lastPoint;
}

lastPoint = newPoint;
x = newPoint.x;
y = newPoint.y;

part_particles_create(global.particlesSys, x, y, global.quanticParticle, 1);
part_particles_create(global.particlesSys, x, y, global.quanticParticle, irandom_range(7, 15));
part_particles_create(global.particlesSys, x, y, global.quanticParticle, irandom_range(3, 8));
