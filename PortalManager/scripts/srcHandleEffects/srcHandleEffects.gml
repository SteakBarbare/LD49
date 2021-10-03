/// @function                            srcHandleEffects();
/// @param  {string}      effect		 effect that is going to fuuf

function srcHandleEffects() {
	
	var effect = argument[0];
	var nearestTrashInstance;
	switch(effect) {
		case "slow":
			hspeed *= 0.25;
			vspeed *= 0.25;
			break;
			
		case "speedUp":
			hspeed *= 5;
			vspeed *= 5;
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
			}
			
			break;
			
		case "disoriented":
			// Invert moving
			if(hspeed > 0) {
				hspeed = -hspeed;
			} else {
				hspeed = abs(hspeed);
			}
			
			if(vspeed > 0) {
				vspeed = -vspeed;
			} else {
				vspeed = abs(vspeed);
			}
			break;
			
		case "iceEffect":
			
			break;
			
		case "bonusSpeed":
			hspeed *= 3.25;
			vspeed *= 3.25;
			break;
			
		case "clean":
			nearestTrashInstance = collision_circle(x, y, 200, objShitTemplate, false , false);
			with(nearestTrashInstance){
				instance_destroy();
			}
			break;
			
		case "laser":
			show_debug_message("lel");
			break;
			
		case "valCall":
			instance_create_depth(0, 0, -1, objVal);
			break;
	}
}