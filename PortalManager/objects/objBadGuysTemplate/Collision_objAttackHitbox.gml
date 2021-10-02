life--;

if(life == 1)
{
	objShakeEffect.shake = true;
	objShakeEffect.range = 2;
	objShakeEffect.alarm[0] = room_speed/4;
}
else
{
	objShakeEffect.shake = true;
	objShakeEffect.range = 10;
	objShakeEffect.alarm[0] = room_speed/4;
}


srcBloodSplash(x, y, bloodType);