function loopingArraySound () {
	var soundsArray = argument[0];
	
	for(var currentSound = 0; currentSound < array_length(soundsArray); currentSound++) {
		while(soundsArray[currentSound][1] >= 1) {
			srcSoundManage(soundsArray[currentSound][0]);
			soundsArray[currentSound][1]--;
		}
	}
	return soundsArray;
}


musicSound = loopingArraySound(musicSound)
if(room == startMenu) {
	musicSound[0][1] = 1;
	musicOn = true;
}

if(room == Room1) {
	audio_sound_gain(snd_loop_music, 1, room_speed);
	musicSound[1][1] = 1;
	musicOn = true;
	
#region Puddles Sounds
// Manage Puddles Sounds
puddleSounds = loopingArraySound(puddleSounds);
// When going out of puddles
if(!objPj.isStun) {
	audio_stop_sound(snd_electric);
}

if(!objPj.iceCooldown || objPj.hspeed == 0 && objPj.vspeed == 0) {
	audio_stop_sound(snd_ice);	
}

if(!objPj.isSlowed || objPj.hspeed == 0 && objPj.vspeed == 0) {
	audio_stop_sound(snd_puke);
}

if(!objPj.isSpeeded || objPj.hspeed == 0 && objPj.vspeed == 0) {
	audio_stop_sound(snd_oil);
} 

#endregion

#region Mobs Sounds
// Manage Mobs Sounds
mobsSound = loopingArraySound(mobsSound);

#endregion

#region Walls Sounds
// Manage Walls Sounds
wallsSound = loopingArraySound(wallsSound);

#endregion

#region Portals Sounds
// Manage Portals Sounds
portalsSound = loopingArraySound(portalsSound);

#endregion

#region Buffs / Debuffs Sounds
// Manage Buffs / Debuffs Sounds
buffsSound = loopingArraySound(buffsSound);

#endregion

#region Player Sounds
// Manage Player Sounds
playerSound = loopingArraySound(playerSound);

#endregion

#region Timer Sounds
// Manage Timer Sounds
timerSound = loopingArraySound(timerSound);
#endregion
}

if(room == rm_gameover) {
	if(audio_is_playing(snd_loop_music)) {
		audio_sound_gain(snd_loop_music, 0, room_speed);
	}
	if(audio_is_playing(snd_titlescreen)) {
		audio_stop_sound(snd_titlescreen);	
	}
	if(audio_is_playing(snd_timer_goes_brr)) {
		audio_stop_sound(snd_timer_goes_brr);	
	}
	musicSound[2][1] = 1;
}

#region GUI Sounds
guiSound = loopingArraySound(guiSound);
#endregion