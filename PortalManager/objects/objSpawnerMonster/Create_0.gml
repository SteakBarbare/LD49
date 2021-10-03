ev = irandom(2);
switch(ev)
{
	case 0:
		mob = objFolloweur;
		break;
		
	case 1:
		mob = objChieur;
		break;
	
	case 2:
		mob = objBadGuyPaumer;
		break;
}
	
instance = instance_create_depth(x, y, 1, mob);

time = 0

dir = irandom(7);
destination = {x : x, y:y}
start = destination;
strength = {x : 100, y : 50}
time = 0;
switch(dir)
{
	case directionId.FRONT:
		destination.y += strength.y;
		break;
	case directionId.BACK:
		destination.y -= strength.y;
		break;
	case directionId.LEFT:
		destination.x -= strength.x;
		break;
	case directionId.RIGHT:
		destination.x += strength.x;
		break;	
	case directionId.FRONT_LEFT:
		destination.x -= strength.x;
		destination.y += strength.y;
		break;
	case directionId.FRONT_RIGHT:
		destination.x += strength.x;
		destination.y += strength.y;
		break;
	case directionId.BACK_LEFT:
		destination.x -= strength.x;
		destination.y -= strength.y;
		break;
	case directionId.BACK_RIGHT:
		destination.x += strength.x;
		destination.y -= strength.y;
		break;;
}


hasArrived = false;