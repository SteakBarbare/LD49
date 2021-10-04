function loopingArraySound () {
	var soundsArray = argument[0]
	
	for(var currentSound = 0; currentSound < array_length(soundsArray); currentSound++) {
		for(var iterationPlaying = 0; iterationPlaying < soundsArray[currentSound][1]; iterationPlaying++) {
			if(soundsArray[currentSound][1] > 0) {
				srcSoundManage(soundsArray[currentSound][0]);
				soundsArray[currentSound][1]--;	
			}
		}
	}
}


loopingArraySound(musicSound)
if(room == startMenu) {
	musicSound[0][1] = 1;
	musicOn = true;
}

if(room == Room1) {
	musicSound[1][1] = 1;
	musicOn = true;
	
#region Puddles Sounds
// Manage Puddles Sounds
loopingArraySound(puddleSounds);


// Sound stop when going out of ice
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
loopingArraySound(mobsSound);

#endregion

#region Walls Sounds
// Manage Walls Sounds
loopingArraySound(wallsSound);

#endregion

#region Portals Sounds
// Manage Portals Sounds
loopingArraySound(portalsSound);

#endregion

#region Buffs / Debuffs Sounds
// Manage Buffs / Debuffs Sounds
loopingArraySound(buffsSound);

#endregion

#region Player Sounds
// Manage Player Sounds
loopingArraySound(playerSound);

#endregion

#region Timer Sounds
// Manage Timer Sounds
loopingArraySound(timerSound);
#endregion
}

if(room == rm_gameover) {
	if(audio_is_playing(snd_loop_music)) {
		audio_stop_sound(snd_loop_music);	
	}
	if(audio_is_playing(snd_titlescreen)) {
		audio_stop_sound(snd_titlescreen);	
	}
	musicSound[2][1] = musicOn;
}

#region GUI Sounds
loopingArraySound(guiSound);
#endregion