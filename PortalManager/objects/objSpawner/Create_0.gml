ev = irandom(4);
ev = 1
var mur;
switch(ev)
{
	case 0:
		mur = objQuanticWall;
		break;
		
	case 1:
		mur = objBumberWall;
		break;
		
	default:
		mur = objDestructibleWall;
		break;
	
}
	
instance = instance_create_depth(x, y, 1, mur);
instance.isMoving = true;
time = 0

dir = irandom(7);
destination = {x : x, y:y}
start = destination;
strength = {x : instance.sprite_width*5, y : sprite_height*1.5}
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