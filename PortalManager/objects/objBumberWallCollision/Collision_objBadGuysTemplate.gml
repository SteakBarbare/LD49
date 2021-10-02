var collideInstance = instance_nearest(x, y, objBadGuysTemplate)



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
