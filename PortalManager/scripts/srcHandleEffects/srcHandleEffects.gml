/// @function                            srcHandleEffects();
/// @param  {string}      effect		 effect that is going to fuuf

function srcHandleEffects() {
	
	var effect = argument[0];
	var nearestTrashInstance;
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
				hspeed *= 2.5;
				vspeed *= 2.5;
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
				var hx, hy;
				hx = 0;
				hy = 0;
				if(dir >= directionId.RIGHT) hx = max(hSpeed, abs(hspeed));
				else if(dir >= directionId.LEFT) hx = -(max(hSpeed, abs(hspeed)));
				
				if(dir == directionId.FRONT || dir == directionId.FRONT_LEFT || dir == directionId.FRONT_RIGHT) hy = max(vSpeed, abs(vspeed));
				else if(dir == directionId.BACK || dir == directionId.BACK_LEFT || dir == directionId.BACK_RIGHT) hy = -max(vSpeed, abs(vspeed));
				objPj.newHspeed = hx;
				objPj.newVspeed = hy;
			}
			break;
			
		case "bonusSpeed":
			hspeed *= 1.5;
			vspeed *= 1.5;
			break;
			
		case "clean":
			nearestTrashInstance = collision_circle(x, y, 400, objDestructibleWallTemplate, false , true);
			with(nearestTrashInstance)
			{
				instance_destroy();	
			}
			nearestTrashInstance = collision_circle(x, y, 400, objQuanticWall, false , true);
			with(nearestTrashInstance)
			{
				instance_destroy();	
			}
			nearestTrashInstance = collision_circle(x, y, 400, objPushingWallTemplate, false , true);
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
				objStarHitbox.alarm[0] = room_speed * 5;
			}
			instance_destroy(objBonusStar);
			
		case "repulsif":
			objRepulsifHitbox.isActive = true;
			if(objRepulsifHitbox.alarm[0] == -1)
			{
				objRepulsifHitbox.alarm[0] = room_speed * 8;
			}
			
			
		case "laser":
			objSlotLaser.inStock = true;
			break;
			
		case "valCall":
		if(!instance_exists(objVal)){
			instance_create_depth(0, 0, -1, objVal);
		}
			break;
	}
}