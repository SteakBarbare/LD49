isActivated = true;
alarm[0] = room_speed;


objPortalHandler.nbPortal = 0;
with(objPortalTemplate)
{
	if(!isActivated)
	{
		instance_destroy();
	}
}
