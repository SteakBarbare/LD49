/// @function                            srcSoundManage();
/// @param  {string}        theSound		 Sound to play
function srcSoundManage(){

	var theSound = argument[0];
	var theSoundIndex = asset_get_index(theSound);

#region SFX
	if(!audio_is_playing(theSoundIndex) && theSound != "snd_loop_music") {
		audio_play_sound(theSoundIndex, 1, false);
	}
#endregion

#region GameMusic
	if(theSound == "snd_titlescreen") {
		if(room == startMenu) {
			if(!audio_is_playing(theSoundIndex)) {
				audio_play_sound(theSoundIndex, 1, true);
			}
		}
	}
	
	if(theSound == "snd_loop_music") {
		if(room == Room1) {
			if(audio_is_playing(snd_titlescreen)) {
				audio_stop_sound(snd_titlescreen);
			}
			if(audio_is_playing(snd_lose)) {
				audio_stop_sound(snd_lose);
			}
			if(!audio_is_playing(theSoundIndex)) {
				audio_play_sound(theSoundIndex, 1, true);				
			}
		}	
	}
	
	if(theSound == "snd_lose") {
		if(room == rm_gameover) {
			if(!audio_is_playing(theSoundIndex)) {
				audio_play_sound(theSoundIndex, 1, false);
			}
			objMusic.musicOn = false;
		}
	}
#endregion
}