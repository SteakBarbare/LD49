var collideInstance = instance_nearest(x, y, objBadGuysTemplate)


collideInstance.etat = etatId.BUMP;
collideInstance.dir = dir;
switch(collideInstance.dir)
{
	case directionId.FRONT:
		collideInstance.vspeed = collideInstance.vSpeed;
		break;
	case directionId.BACK:
		collideInstance.vspeed = -collideInstance.vSpeed;
		break;
	case directionId.LEFT:
		collideInstance.hspeed = -collideInstance.hSpeed;
		break;
	case directionId.BACK_LEFT:
		collideInstance.hspeed = -collideInstance.hSpeed;
		collideInstance.vspeed = -collideInstance.vSpeed;
		break;
	case directionId.FRONT_LEFT:
		collideInstance.hspeed = -collideInstance.hSpeed;
		collideInstance.vspeed = collideInstance.vSpeed;
		break;
	case directionId.RIGHT:
		collideInstance.hspeed = collideInstance.hSpeed;
		break;
	case directionId.FRONT_RIGHT:
		collideInstance.hspeed = collideInstance.hSpeed;
		collideInstance.vspeed = collideInstance.vSpeed;
		break;
	case directionId.BACK_RIGHT:
		collideInstance.hspeed = collideInstance.hSpeed;
		collideInstance.vspeed = -collideInstance.vSpeed;
		break;
}

collideInstance.hspeed *= 10;
collideInstance.vspeed *= 10;

collideInstance.alarm[1] = room_speed * 0.1;