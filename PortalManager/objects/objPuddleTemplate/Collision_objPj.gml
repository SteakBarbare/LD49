/// @description Interaction PJ

for(var effect = 0; effect < array_length(puddleEffect); effect++)
{
	var isAdded = false;
	for(var pjEffect = 0; pjEffect < array_length(objPj.effectsActive); pjEffect++)
	{
		if(objPj.effectsActive[pjEffect].name == puddleEffect[effect].name)
		{
			objPj.effectsActive[pjEffect].time =  puddleEffect[effect].time;
			isAdded = true;
		}
	}
	if(!isAdded)
	{
		array_push(objPj.effectsActive, puddleEffect[effect]);
	}
}