for(var currentSound = 0; currentSound < array_length(puddleSounds); currentSound++) {
	for(var iterationPlaying = 0; iterationPlaying < puddleSounds[currentSound][1]; iterationPlaying++) {
		srcSoundManage(puddleSounds[currentSound][0]);
		puddleSounds[currentSound][1]--;
		//if(puddleSounds[currentSound][1] <= 0) {
		//	array_delete(puddleSounds, currentSound, 1);			
		//}
	}
}