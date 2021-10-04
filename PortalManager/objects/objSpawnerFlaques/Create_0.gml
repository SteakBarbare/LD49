ev = irandom(4);
switch(ev)
{
	case 0:
		flaque = objPuddleElectric;
		break;
		
	case 1:
		flaque = objPuddleIce;
		break;
	
	case 2:
		flaque = objPuddleOil;
		break;
		
	default:
		flaque = objPuddlePuke;
		break;
	
}
	
instance = instance_create_depth(x, y, 10, flaque);
