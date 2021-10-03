ev = irandom(3)

var mur = objDestructibleWall;
switch(ev)
{
	case 0:
		mur = objDestructibleWall;
		break;
		
	case 1:
		mur = objQuanticWall;
		break;
			
	default:
		mur = objDestructibleWall;
		break;
	
}

show_debug_message(ev)
	
instance = instance_create_depth(x, y, 1, mur);
time = 0

dir = irandom(7);
destination = {x : x, y:y}
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
