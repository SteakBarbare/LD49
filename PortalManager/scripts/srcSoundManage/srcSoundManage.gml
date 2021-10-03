/// @function                            srcSoundManage();
/// @param  {real}        theSound		 Sound to play
function srcSoundManage(){

	var theSound = argument[0];
	var theSoundIndex = asset_get_index(theSound)
	
	if(!audio_is_playing(theSoundIndex)) {
		audio_play_sound(theSoundIndex, 1, false);	
	}
}