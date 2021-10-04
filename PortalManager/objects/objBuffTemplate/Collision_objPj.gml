for(var effect = 0; effect < array_length(buffEffect); effect++)
{
	var isAdded = false;
	for(var pjEffect = 0; pjEffect < array_length(objPj.effectsActive); pjEffect++)
	{
		if(objPj.effectsActive[pjEffect].name == buffEffect[effect].name)
		{
			objPj.effectsActive[pjEffect].time =  buffEffect[effect].time;
			objPj.effectsActive[pjEffect].isNew =  buffEffect[effect].isNew;
			isAdded = true;
		}
	}
	if(!isAdded)
	{
		array_push(objPj.effectsActive, buffEffect[effect]);
	}
}

if(!debuff) 
{
	objMusic.buffsSound[0][1] = 1;	
} else {
	objMusic.buffsSound[1][1] = 1;	
}

instance_destroy();