alarm[9] = room_speed * irandom(5) + 4;

if(!place_meeting(x, y, objSolidTemplate))
{
	var e = irandom(25)
	if(e < 3)
	{
		instance_create_depth(x, y, 1, objSpawner);
	}
}