/// @function                            srcHandleEffects();
/// @param  {string}      effect		 effect that is going to fuuf

function srcHandleEffects() {
	
	var effect = argument[0];
	
	switch(effect) 
	{
		case "slow":
			if(!isSlowed)
			{
				isSlowed = true;
				hspeed *= 0.25;
				vspeed *= 0.25;
			}
			break;
			
		case "speedUp":
			if(!isSpeeded)
			{
				hspeed *= 1.5;
				vspeed *= 1.5;
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
				array_push(objMusic.puddleSounds, ["snd_ice", 1]);
				show_debug_message(objMusic.puddleSounds);
				iceCooldown = true;
				objPj.newHspeed = hspeed;
				objPj.newVspeed = vspeed;
			}
	}
}