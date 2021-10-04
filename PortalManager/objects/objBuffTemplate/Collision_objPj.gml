for(effect = 0; effect < array_length(buffEffect); effect++) {
	if(array_length(objPj.effectsActive) != 0) {
		for(elementIndex = 0; elementIndex < array_length(objPj.effectsActive); elementIndex++) {
			if(objPj.effectsActive[elementIndex][0] == buffEffect[effect][0]) {
				objPj.effectsActive[elementIndex][1] = buffEffect[effect][1];
				exit;
			} else {
				array_push(objPj.effectsActive, buffEffect[effect]);
			}	
		}
	} else {
		array_push(objPj.effectsActive, buffEffect[effect]);
	}	
}

instance_destroy();