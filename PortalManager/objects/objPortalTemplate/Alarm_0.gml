nbInvoc--;
if(nbInvoc > 0)
{
	alarm[0] = room_speed;
}
else
{
	if(randomSpanwerBonus <= 100){
		if(randomSpanwerBonus <= 90){
			malusBuffIncoming = true;
		} else {
			bonusBuffIncoming = true;
		}
		instance_create_depth(x, y, -20, objSpawnerBuffs);
			instance_destroy();
	}
}