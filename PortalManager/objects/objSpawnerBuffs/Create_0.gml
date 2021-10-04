instance = noone;
//listOfBonnus = [objBonusClean, objBonusLaser, objBonusRepulse, objBonusSpeed, objBonusStar];
listOfBonnus = [objDebuffVal, objDebuffVal, objDebuffVal, objBonusLaser, objBonusLaser];
listOfMalus = [objDebuffVal];
getNameBuff = 0;
limitRangeBonus = array_length(listOfBonnus) - 1;
limitRangeMalus = array_length(listOfMalus) - 1;
	
if(objPortalTemplate.bonusBuffIncoming){
	instance = instance_create_depth(x, y, -2000, listOfBonnus[irandom_range(0, limitRangeBonus)]);
} else if(objPortalTemplate.malusBuffIncoming){
	instance = instance_create_depth(x, y, -2000, listOfMalus[irandom_range(0, limitRangeMalus)]);
}


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