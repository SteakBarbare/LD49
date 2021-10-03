var bumper = instance_nearest(x, y, objBumberWall)

etat = etatId.BUMP;
dir = bumper.dir;
if(dir == 3) dir = 5;
hspeed = 0;
vspeed = 0;
switch(dir)
{
	case directionId.FRONT:
		vspeed = vSpeed;
		break;
	case directionId.BACK:
		vspeed = -vSpeed;
		break;
	case directionId.LEFT:
		hspeed = -hSpeed;
		break;
	case directionId.RIGHT:
		hspeed = hSpeed;
		break;

}

hspeed *= 10;
vspeed *= 10;

alarm[1] = room_speed * 0.1;