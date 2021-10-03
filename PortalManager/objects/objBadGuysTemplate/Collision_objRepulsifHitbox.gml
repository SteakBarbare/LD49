if(objRepulsifHitbox.isActive)
{
	var nx, ny;
	nx = x;
	ny = y;
	switch(objPj.dir)
	{
		case directionId.FRONT:
			ny+=2;
			break;
		case directionId.BACK:
			ny+=2;
			break;
		case directionId.LEFT:
			nx-=2;
			break;
		case directionId.BACK_LEFT:
			nx-=2;
			ny-=2;
			break;
		case directionId.FRONT_LEFT:
			nx-=2;
			ny+=2;
			break;
		case directionId.RIGHT:
			nx+=2;
			break;
		case directionId.FRONT_RIGHT:
			nx+=2;
			ny+=2;
			break;
		case directionId.BACK_RIGHT:
			nx+=2;
			ny-=2;
			break;
	}

	if(!place_meeting(nx, ny, objSolidTemplate))
	{
		x = nx;
		y = ny;
	}
}