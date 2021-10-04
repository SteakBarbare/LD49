/// @function                            srcHandleEffects();
/// @param  {string}      effect		 effect that is going to fuuf

function srcHandleEffects() {
	
	var effect = argument[0];
	
	switch(effect) 
	{
		case "slow":
			if(!isSlowed)
			{
				objMusic.puddleSounds[3][1] = 1;
				isSlowed = true;
				hspeed *= 0.25;
				vspeed *= 0.25;
			}
			break;
			
		case "speedUp":
			if(!isSpeeded)
			{
				objMusic.puddleSounds[1][1] = 1;
				hspeed *= 4;
				vspeed *= 4;
				isSpeeded = true
			}
			break;
			
		case "stun":
			if(!stunCooldown) {			
				isStun = true;
				stunCooldown = true;
				alarm[3] = 1.5 * room_speed;
				alarm[2] = 4 * room_speed;
				
				// Shaking screen
				objShakeEffect.shake = true;
				objShakeEffect.range = 1;
				objShakeEffect.alarm[0] = 1.5 * room_speed;
				
				
				objMusic.puddleSounds[2][1] = 1;
			}
			
			if(isStun) {
				// Stun
				if(hspeed != 0) {
					hspeed = 0;	
				}
				
				if(vspeed != 0) {
					vspeed = 0;	
				}
				etat = etatId.IDLE;
			}
			
			break;
			
		case "disoriented":
			// Invert moving
			objPj.invertedControl = true;
			if(objPj.alarm[4] == -1)
			{
				objPj.alarm[4] = room_speed * 5;
			}
			break;
			
		case "iceEffect":
			if(!iceCooldown) {
				objMusic.puddleSounds[0][1] = 1;
				iceCooldown = true;
				objPj.newHspeed = hspeed;
				objPj.newVspeed = vspeed;
			}
	}
}