objMusic.portalsSound[2][1] = nbInvoc;
nbInvoc--;
if(nbInvoc > 0)
{
	alarm[0] = room_speed;
}
else
{
	if(randomSpanwerBonus <= 35){
		if(randomSpanwerBonus <= 5){
			malusBuffIncoming = true;
		} else {
			bonusBuffIncoming = true;
		}
		instance_create_depth(x, y, -20, objSpawnerBuffs);
			instance_destroy();
	}
}