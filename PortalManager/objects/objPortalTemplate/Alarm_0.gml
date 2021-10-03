nbInvoc--;
if(nbInvoc > 0)
{
	alarm[0] = room_speed;
}
else
{
	instance_destroy();
}