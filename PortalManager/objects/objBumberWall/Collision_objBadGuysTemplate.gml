if(!isMoving)
{
	var collideInstance = instance_nearest(x, y, objBadGuysTemplate)

	var isAligned = collideInstance.etat == etatId.BUMP || ((dir == 0 && collideInstance.y >= y) || (dir == 1 && collideInstance.y <= y) || (dir == 2 && collideInstance.x <= x) || (dir == 3 && collideInstance.x >= x))


	collideInstance.etat = etatId.BUMP;
	if(dir == 3)
	{
		collideInstance.dir = directionId.RIGHT;
		collideInstance.actualDir = directionId.RIGHT;
	}
	else
	{
		collideInstance.dir = dir;
		collideInstance.actualDir = dir;
	}
	collideInstance.superBump = superBump;
	collideInstance.bumpStrength = strength/4;
}
