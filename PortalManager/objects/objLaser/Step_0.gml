if(!isSet)
{
	if(dir >= directionId.RIGHT) dir = directionId.RIGHT;
	else if(dir >= directionId.LEFT) dir = directionId.LEFT;
	isSet = true;
}



if(!hasEncouterObstacle)
{
	if(incrementStart)
	{
		if(dir == directionId.FRONT) yStart+=Speed;
		if(dir == directionId.BACK) yStart-=Speed;
		if(dir == directionId.LEFT) xStart-=Speed;
		if(dir == directionId.RIGHT) xStart+=Speed;
	}
	switch(dir)
	{
		case directionId.FRONT:
			y+=Speed;
			break;
		case directionId.BACK:
			y-=Speed;
			break;
		case directionId.LEFT:
			x-=Speed;
			break;
		case directionId.RIGHT:
			x+=Speed;
			break;
	}
	
	if(place_meeting(x, y, objBadGuysTemplate))
	{
		instance_place(x, y, objBadGuysTemplate).alarm[8] = room_speed * 0.1;
	}
	if(place_meeting(x, y, objFolloweur))
	{
		instance_place(x, y, objFolloweur).alarm[0] = room_speed * 0.1;
	}
	if(place_meeting(x, y, objZaWalldoTemplate))
	{
		var mur = instance_place(x, y, objZaWalldoTemplate);
		if(mur.indestructible)
		{
			hasEncouterObstacle = true;
			alarm[0] = room_speed * 0.8;
		}
		else
		{
			instance_destroy(mur);
		}
	}
}
