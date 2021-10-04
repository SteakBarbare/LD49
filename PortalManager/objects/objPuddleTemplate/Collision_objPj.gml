/// @description Interaction PJ

for(effect = 0; effect < array_length(puddleEffect); effect++) 
{
	if(array_length(objPj.effectsActive) != 0) 
	{
		for(elementIndex = 0; elementIndex < array_length(objPj.effectsActive); elementIndex++) {
			if(objPj.effectsActive[elementIndex].name == puddleEffect.name) 
			{
				objPj.effectsActive[elementIndex][1] = puddleEffect[effect][1];
				exit;
			} else {
				array_push(objPj.effectsActive, puddleEffect[effect]);
			}	
		}
	} else {
		array_push(objPj.effectsActive, puddleEffect[effect]);
	}	
}