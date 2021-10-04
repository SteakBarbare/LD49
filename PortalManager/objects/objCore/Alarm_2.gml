timer++;
if(timer > 0) {
	objScore.timer = timer
	objScore.minutes = floor(timer / 60);
	objScore.secondes = timer % 60;
}

alarm[2] = room_speed;