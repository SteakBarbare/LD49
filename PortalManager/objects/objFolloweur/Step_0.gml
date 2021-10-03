event_inherited()
if(distance_to_object(objPj) < 100 && etat == etatId.WALK)
{
	mp_potential_step(objPj.x, objPj.y, hSpeed, true)
}

if(life == 0 && death)
{
	hspeed = 0;
	vspeed = 0;
	death = false;
	alarm[0] = room_speed * 0.1;
}