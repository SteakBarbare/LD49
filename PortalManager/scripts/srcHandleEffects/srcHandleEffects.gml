/// @function                            srcHandleEffects();
/// @param  {string}      effect		 effect that is going to fuuf

function srcHandleEffects() {
	
	var effect = argument[0];
	var nearestTrashInstance;
	switch(effect) {
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
			
			break;
			
		case "bonusSpeed":
			hspeed *= 3.25;
			vspeed *= 3.25;
			break;
			
		case "clean":
			nearestTrashInstance = collision_circle(x, y, 400, objDestructibleWall, false , true);
			with(nearestTrashInstance)
			{
				instance_destroy();	
			}
			nearestTrashInstance = collision_circle(x, y, 400, objQuanticWall, false , true);
			with(nearestTrashInstance)
			{
				instance_destroy();	
			}
			nearestTrashInstance = collision_circle(x, y, 400, objPushingWall, false , true);
			with(nearestTrashInstance)
			{
				instance_destroy();	
			}
			nearestTrashInstance = collision_circle(x, y, 400, objPuddleTemplate, false , true);
			with(nearestTrashInstance)
			{
				instance_destroy();	
			}
			break;
			
		case "star":
			objStarHitbox.isActive = true;
			if(objStarHitbox.alarm[0] == -1)
			{
				objStarHitbox.alarm[0] = room_speed * 8;
			}
			
		case "repulsif":
			objRepulsifHitbox.isActive = true;
			if(objRepulsifHitbox.alarm[0] == -1)
			{
				objRepulsifHitbox.alarm[0] = room_speed * 8;
			}
			
			
		case "laser":
			break;
			
		case "valCall":
			instance_create_depth(0, 0, -1, objVal);
			break;
			
			if(!iceCooldown) {
				iceCooldown = true;
				objPj.newHspeed = hspeed;
				objPj.newVspeed = vspeed;
			}
	}
}