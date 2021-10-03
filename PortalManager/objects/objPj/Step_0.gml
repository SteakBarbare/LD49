depth = -bbox_bottom;
var isMoving, isMovingV, isMovingS, vMove, hMove;
isMoving = false;
isMovingV = false;
isMovingS = false;
vMove = directionId.FRONT;
hMove = directionId.RIGHT;

collisionDir = -1;
#region Déplacement
if(etat != etatId.BUMP) // SI pas een bump
{
	#region Kick Starter
	if(objKeybind.clickLeft && inputPrevent <= 0 && etat != etatId.KICK) 
	{
		inputPrevent = room_speed / 4;
		etat = etatId.KICK;
		dirBeforeKick = dir;
		switch(dir)
		{
			case directionId.FRONT:
				hspeed = 0;
				vspeed = vSpeed;
				break;
			case directionId.BACK:
				hspeed = 0;
				vspeed = -vSpeed;
				break;
			case directionId.LEFT:
				hspeed = -hSpeed;
				vspeed = 0;
				break;
			case directionId.BACK_LEFT:
				hspeed = -hSpeed;
				vspeed = -vSpeed;
				break;
			case directionId.FRONT_LEFT:
				hspeed = -hSpeed;
				vspeed = vSpeed;
				break;
			case directionId.RIGHT:
				hspeed = hSpeed;
				vspeed = 0;
				break;
			case directionId.FRONT_RIGHT:
				hspeed = hSpeed;
				vspeed = vSpeed;
				break;
			case directionId.BACK_RIGHT:
				hspeed = hSpeed;
				vspeed = -vSpeed;
				break;
		}
		hspeed *= 0.6;
		vspeed *= 0.6;
	}
	#endregion
	#region Moving Toward X Axis
	if(objKeybind.keyLeft xor objKeybind.keyRight) // On regarde si le joueur bouge de côté
	{
		if(objKeybind.keyLeft)
		{
			isMoving = true;
			hMove = directionId.LEFT;
			isMovingS = true;
		}
		else if(objKeybind.keyRight) 
		{
			hMove = directionId.RIGHT;
			isMovingS = true;
			isMoving = true;
		}
	}
	#endregion
	#region Moving Toward Y Axis
	if(objKeybind.keyUp xor objKeybind.keyDown) // On regarde si le joueur bouge verticalement
	{
		if(objKeybind.keyUp)
		{
			vMove = directionId.BACK;
			isMovingV = true;
			isMoving  = true;
		}
		else if(objKeybind.keyDown)
		{
			vMove = directionId.FRONT;
			isMovingV = true;
			isMoving = true;
		}
	}
	#endregion
	
	#region SpeedHandler
	if(etat != etatId.KICK)
	{
		if(isMoving)
		{
			if(etat != etatId.PUSH)
			{
				etat = etatId.WALK;
			}
			if(isMovingV && isMovingS)
			{
				if(vMove == directionId.FRONT)
				{
					switch(hMove)
					{
						case directionId.LEFT:
							dir = directionId.FRONT_LEFT;
							hspeed = -hSpeed;
							vspeed = vSpeed;
							break;
				
						case directionId.RIGHT:
							dir = directionId.FRONT_RIGHT;
							hspeed = hSpeed;
							vspeed = vSpeed;
							break;
				
						default:
							dir = directionId.FRONT;
							hspeed = 0;
							vspeed = vSpeed;
							break
					}
				}
				else if (vMove == directionId.BACK)
				{
					switch(hMove)
					{
						case directionId.LEFT:
							dir = directionId.BACK_LEFT;
							hspeed = -hSpeed;
							vspeed = -vSpeed;
							break;
				
						case directionId.RIGHT:
							dir = directionId.BACK_RIGHT;
							hspeed = hSpeed;
							vspeed = -vSpeed;
							break;
				
						default:
							dir = directionId.BACK;
							hspeed = 0;
							vspeed = -vSpeed;
							break
					}
				}
		
			}
			else if(isMovingS)
			{
				switch(hMove)
				{
					case directionId.LEFT:
						dir = directionId.LEFT;
						hspeed = -hSpeed;
						vspeed = 0;
						break;
					default:
						dir = directionId.RIGHT;
						hspeed = hSpeed;
						vspeed = 0;
						break;
				}
		
			}
			else
			{
				switch(vMove)
				{
					case directionId.FRONT:
						dir = directionId.FRONT;
						hspeed = 0;
						vspeed = vSpeed;
						break;
					default:
						dir = directionId.BACK;
						hspeed = 0;
						vspeed = -vSpeed;
						break;
				}
			}
		}
		else 
		{
			if(isMovingS) dir = hMove;
			if(isMovingV) dir = vMove;
	
			etat = etatId.IDLE
			hspeed = 0;
			vspeed = 0;
		}
	}
	#endregion
}
else
{
	#region Bumb Handler
	if(!bumpStart)
	{
		bumpStart = true;
		alarm[0] = room_speed * 0.2;
	}
	switch(dir)
	{
		case directionId.FRONT:
			hspeed = 0;
			vspeed = bumpStrength;
			break;
			
		case directionId.BACK:
			hspeed = 0;
			vspeed = -bumpStrength;
			break;
			
		case directionId.LEFT:
			hspeed = -bumpStrength;
			vspeed = 0;
			break;
			
		case directionId.RIGHT:
			hspeed = bumpStrength;
			vspeed = 0;
			break;	
	}
	#endregion
}
#endregion

var csX = hspeed + 2;
var csY = vspeed + 2;
#region COLLISION PUSHING WALL
if(etat != etatId.KICK) // Si pas en Kick
{
	var touch;
	if(place_meeting(x + csX, y, objPushingWall) && dir >= directionId.RIGHT)
	{
		
		var pInstance = instance_place(x + csX, y, objPushingWall);
		touch = false;
		with(pInstance)
		{
			if(!place_meeting(x + 0.5, y, objSolidTemplate))
			{
				x+=0.5
			}
			else touch = true;
		}
		if(!touch)
		{
			alarm[1] = room_speed / 8;
			image_speed = 0.7;
			etat = etatId.PUSH;
		}
	}
	if(place_meeting(x - csX, y, objPushingWall) && dir >= directionId.LEFT && dir < directionId.RIGHT)
	{	
		touch = false;
		var pInstance = instance_place(x - csX, y, objPushingWall);
		with(pInstance)
		{
			if(!place_meeting(x - 0.5, y, objSolidTemplate))
			{
				x-=0.5
			}
			else touch = true;
		}
		if(!touch)
		{
			alarm[1] = room_speed / 8;
			image_speed = 0.7;
			etat = etatId.PUSH;
		}
	}
	if(place_meeting(x, y + csY, objPushingWall) && (dir == directionId.FRONT || dir == directionId.FRONT_LEFT || dir == directionId.FRONT_RIGHT))
	{
		var pInstance = instance_place(x, y + csY, objPushingWall);
		touch = false;
		with(pInstance)
		{
			if(!place_meeting(x, y + 0.5, objSolidTemplate))
			{
				y+=0.5
			}
			else touch = true;
		}
		if(!touch)
		{
			alarm[1] = room_speed / 8;
			image_speed = 0.7;
			etat = etatId.PUSH;
		}
	}
	if(place_meeting(x, y - csY, objPushingWall) && (dir == directionId.BACK || dir == directionId.BACK_LEFT || dir == directionId.BACK_RIGHT))
	{
		touch = false;
		var pInstance = instance_place(x, y - csY, objPushingWall);
		with(pInstance)
		{
			if(!place_meeting(x, y - 0.5, objSolidTemplate))
			{
				y-=0.5
			}
			else touch = true;
		}
		if(!touch)
		{
			alarm[1] = room_speed / 8;
			image_speed = 0.7;
			etat = etatId.PUSH;
		}
	}
}
#endregion

#region COLLISION
if(place_meeting(x + csX, y, objSolidTemplate) && dir >= directionId.RIGHT)
{
	hspeed = 0;
}
if(place_meeting(x - csX, y, objSolidTemplate) && dir >= directionId.LEFT && dir < directionId.RIGHT)
{
	hspeed = 0;
}
if(place_meeting(x, y + csY, objSolidTemplate) && (dir == directionId.FRONT || dir == directionId.FRONT_LEFT || dir == directionId.FRONT_RIGHT))
{
	vspeed = 0;
}
if(place_meeting(x, y - csY, objSolidTemplate) && (dir == directionId.BACK || dir == directionId.BACK_LEFT || dir == directionId.BACK_RIGHT))
{
	vspeed = 0;
}
#endregion

#region Directional animation
if(dir == directionId.FRONT)
{
	if(etat == etatId.PUSH)
	{
		if(sprite_index != sprPushFront)
		{
			sprite_index = sprPushFront;
			image_xscale = abs(image_xscale);		
		}
	}
	else if(etat == etatId.IDLE || etat == etatId.BUMP)
	{
		if(image_xscale < 0) image_xscale = abs(image_xscale);
		if(sprite_index != sprIdleFront)
		{
			sprite_index = sprIdleFront;
			image_index = 0;
		}
	}
	else if(etat == etatId.WALK)
	{
		if(image_xscale < 0) image_xscale = abs(image_xscale);
		if(sprite_index != sprWalkFront)
		{
			sprite_index = sprWalkFront;
			image_index = 0;
		}
	}
	else if(etat == etatId.KICK)
	{
		if(image_xscale < 0) image_xscale = abs(image_xscale);
		if(sprite_index != sprKickFront)
		{
			sprite_index = sprKickFront;
			image_index = 0;
		}
	}
}

if(dir == directionId.BACK)
{
	if(etat == etatId.PUSH)
	{
		if(sprite_index != sprPushBack)
		{
			sprite_index = sprPushBack;
			image_xscale = abs(image_xscale);		
		}
	}
	else if(etat == etatId.IDLE || etat == etatId.BUMP)
	{
		if(sprite_index != sprIdleBack)
		{
			sprite_index = sprIdleBack;
			image_index = 0;
			image_xscale = abs(image_xscale);		
		}
	}
	else if(etat == etatId.WALK)
	{
		if(sprite_index != sprWalkBack)
		{
			sprite_index = sprWalkBack;
			image_index = 0;
			image_xscale = abs(image_xscale);
		}
	}
	else if(etat == etatId.KICK)
	{
		if(sprite_index != sprKickBack)
		{
			sprite_index = sprKickBack;
			image_index = 0;
		}
	}
}

if(dir >= directionId.LEFT && dir < directionId.RIGHT)
{
	if(etat == etatId.PUSH)
	{
		if(sprite_index != sprPushSide || image_xscale >= 0)
		{
			sprite_index = sprPushSide;
			image_xscale = -abs(image_xscale);		
		}
	}
	else if(etat == etatId.IDLE || etat == etatId.BUMP)
	{
		if(sprite_index != sprIdleSide || image_xscale >= 0)
		{
			sprite_index = sprIdleSide;
			image_index = 0;
			image_xscale = -abs(image_xscale);
		}
	}
	else if(etat == etatId.WALK)
	{
		if(sprite_index != sprWalkSide  || image_xscale >= 0)
		{
			sprite_index = sprWalkSide;
			image_index = 0;
			image_xscale = -abs(image_xscale);
		}
	}
	else if(etat == etatId.KICK)
	{
		if(sprite_index != sprKickSide  || image_xscale >= 0)
		{
			sprite_index = sprKickSide;
			image_index = 0;
			image_xscale = -abs(image_xscale);
		}
	}
}

if(dir >= directionId.RIGHT)
{
	if(etat == etatId.PUSH)
	{
		if(sprite_index != sprPushSide || image_xscale < 0)
		{
			sprite_index = sprPushSide;
			image_xscale = abs(image_xscale);		
		}
	}
	else if(etat == etatId.IDLE || etat == etatId.BUMP)
	{
		if(sprite_index != sprIdleSide || image_xscale < 0)
		{
			sprite_index = sprIdleSide;
			image_index = 0;
			image_xscale = abs(image_xscale);	
		}
	}
	else if(etat == etatId.WALK)
	{
		if(sprite_index != sprWalkSide || image_xscale < 0)
		{
			sprite_index = sprWalkSide;
			image_index = 0;
			image_xscale = abs(image_xscale);	
		}
	}
	else if(etat == etatId.KICK)
	{
		if(sprite_index != sprKickSide || image_xscale < 0)
		{
			sprite_index = sprKickSide;
			image_index = 0;
			image_xscale = abs(image_xscale);	
		}
	}
}
#endregion

#region Kick Manager
if(etat == etatId.KICK)
{
	if(image_index == 0)
	{
		image_speed = 2;
		
	}
	
	if(image_index >= 5 && image_index <=8 && hit == 1)
	{
		if(hspeed != 0)
		{
			hspeed *= 3;
		}
		if(vspeed != 0)
		{
			vspeed *= 3;
		}
		hit = 0;
		var kickHitbox = instance_create_depth(x, y, 1, objAttackHitbox);
		if(dir == directionId.FRONT) kickHitbox.sprite_index = sprKickFrontHitbox;
		kickHitbox.image_xscale = image_xscale;
		
	}
	else if (image_index >= 9)
	{
		etat = etatId.IDLE;
		hit = 1;
		image_speed = 1;
	}
	
}
#endregion

if(inputPrevent >= 0) inputPrevent--;

#region EffectManager
// Activate each effect on the array
for(currentEffect = 0; currentEffect < array_length(effectsActive); currentEffect++) {
	srcHandleEffects(effectsActive[currentEffect][0]);
}
	
// Checking timer of each effect => decrement or remove array
for(currentEffect = 0; currentEffect < array_length(effectsActive); currentEffect++) {
	if(effectsActive[currentEffect][1] > 0) {
		effectsActive[currentEffect][1]--;
	} else {
		array_delete(effectsActive, currentEffect, 1);
	}
}
#endregion