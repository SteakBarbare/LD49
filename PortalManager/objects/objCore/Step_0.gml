if(alarm[0] < room_speed * 60 && irandom(100) < 2 && !objShakeEffect.shake)
{
	objShakeEffect.shake = true;
	objShakeEffect.range = 2;
	objShakeEffect.alarm[0] = room_speed/4;
}
else if(alarm[0] < room_speed * 30 && irandom(100) < 5 && !objShakeEffect.shake)
{
	objShakeEffect.shake = true;
	objShakeEffect.range = 4;
	objShakeEffect.alarm[0] = room_speed/4;
}