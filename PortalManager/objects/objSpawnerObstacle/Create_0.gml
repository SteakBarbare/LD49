ev = irandom(4);
dir = irandom(7);
switch(ev)
{
	case 0:
		mur = objQuanticWall;
		break;
		
	case 1:
		mur = objBumberWall;
		break;
	
	case 2:
		mur = objPushingWall;
		break;
		
	default:
		mur = objDestructibleWall;
		break;
	
}
	
instance = instance_create_depth(x, y, 1, mur);

time = 0

isSet = false;