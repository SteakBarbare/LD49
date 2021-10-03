event_inherited()
if(distance_to_object(objPj) < 100 && (etat == etatId.WALK || etat == etatId.KICK))
{
	mp_potential_step(objPj.x, objPj.y, hSpeed, true)
}

if(life == 0 && death)
{
	death = false;
	alarm[0] = room_speed * 0.1;
}