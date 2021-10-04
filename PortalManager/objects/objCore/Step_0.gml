if(alarm[0] <= 0) {
	alarm[0] = 0;	
}

depth = -bbox_bottom
if(alarm[0] < room_speed * 45 && irandom(100) < 2 && !objShakeEffect.shake)
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
else if(alarm[0] < room_speed * 10 && irandom(100) < 10 && !objShakeEffect.shake)
{
	objShakeEffect.shake = true;
	objShakeEffect.range = 10;
	objShakeEffect.alarm[0] = room_speed/4;
}