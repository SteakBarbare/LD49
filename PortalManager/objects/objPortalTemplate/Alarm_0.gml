nbInvoc--;
if(nbInvoc > 0)
{
	alarm[0] = room_speed;
}
else
{
	if(randomSpanwerBonus <= 100){
		objBonusHandler.xPos = x;
		objBonusHandler.yPos = y;
		if(randomSpanwerBonus <= 50){
			objBonusHandler.malusProc = true;	
		}else {
			objBonusHandler.bonusProc = true;	
		}
	}
	instance_destroy();
}