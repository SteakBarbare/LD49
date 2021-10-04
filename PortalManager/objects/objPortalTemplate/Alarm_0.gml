nbInvoc--;
if(nbInvoc > 0)
{
	alarm[0] = room_speed;
}
else
{
	if(randomSpanwerBonus <= 80){
		objBonusHandler.xPos = x;
		objBonusHandler.yPos = y;
		if(randomSpanwerBonus <=8){
			objBonusHandler.malusProc = true;	
		}else {
			objBonusHandler.bonusProc = true;	
		}
	}
	instance_destroy();
}