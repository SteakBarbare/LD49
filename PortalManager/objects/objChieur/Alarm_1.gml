alarm[1] = room_speed * irandom(5) + 4;

if(!place_meeting(x, y, objSolidTemplate))
{
	var e = irandom(30)
	if(e < 5)
	{
		instance_create_depth(x, y, 1, objSpawnerObstacle);
	}
}
