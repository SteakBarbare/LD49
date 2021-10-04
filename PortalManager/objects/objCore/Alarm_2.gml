timer++;
if(timer > 0) {
	objScore.timer = timer
	objScore.minutes = floor(timer / 60);
	objScore.secondes = timer % 60;
}

if(objScore.secondes == 10 || objScore.secondes == 20 || objScore.secondes == 30 || objScore.secondes == 40 || objScore.secondes == 50 || objScore.secondes == 59) {
	objMusic.timerSound[1][1] = 1;
}

alarm[2] = room_speed;