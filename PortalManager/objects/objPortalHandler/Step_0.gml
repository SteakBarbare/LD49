if(!roomHasPortal)
{
	roomHasPortal = true;
	var forbiddenRegion;
	if(objPj.x < room_width/2)
	{
		if(objPj.y < room_height/2)
		{
			forbiddenRegion = 0;
		}
		else
		{
			forbiddenRegion = 2;
		}
	}
	else
	{
		if(objPj.y < room_height/2)
		{
			forbiddenRegion = 1;
		}
		else
		{
			forbiddenRegion = 3;
		}
	}
	
	region0 = irandom(4);
	rengion1 = irandom(4);
	
	while(region0 == forbiddenRegion)
	{
		region0 = irandom(4);
	}
	
	while(region1 == forbiddenRegion)
	{
		region1 = irandom(4);
	}
	
	
}