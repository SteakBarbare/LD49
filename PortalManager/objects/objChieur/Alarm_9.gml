alarm[9] = room_speed * irandom(5) + 8;

if(!place_meeting(x))
{
	instance_create_depth(x, y, 1, objSpawner);
}