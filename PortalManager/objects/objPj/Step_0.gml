depth = -bbox_bottom;
var isMoving, isMovingV, isMovingS, vMove, hMove;
isMoving = false;
isMovingV = false;
isMovingS = false;
vMove = directionId.FRONT;
hMove = directionId.RIGHT;

collisionDir = -1;

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
}

if(objKeybind.keyLeft xor objKeybind.keyRight)
{
	
	if(objKeybind.keyLeft)
	{
		if(place_free(x - collisionSpeed, y))
		{
			isMoving = true;
		}
		else
		{
			while(place_free(x - 1, y))
			{
				x -= 1;
			}
			hspeed = 0;
		}
		hMove = directionId.LEFT;
		isMovingS = true;
	}
	else if(objKeybind.keyRight) 
	{
		hMove = directionId.RIGHT;
		isMovingS = true;
		if(place_free(x + collisionSpeed, y))
		{
			isMoving = true;
		}
		else
		{
			while(place_free(x + 1, y))
			{
				x += 1;
			}
			hspeed = 0;
		}
	}
}
if(objKeybind.keyUp xor objKeybind.keyDown)
{
	if(objKeybind.keyUp && place_free(x, y - collisionSpeed))
	{
		vMove = directionId.BACK;
		isMovingV = true;
		if(place_free(x, y - collisionSpeed))
		{
			isMoving = true;
		}
		else
		{
			while(place_free(x, y + 1))
			{
				y += 1;
			}
			vspeed = 0;
		}
	}
	else if(objKeybind.keyDown && place_free(x, y + collisionSpeed))
	{
		vMove = directionId.FRONT;
		isMovingV = true;
		if(place_free(x, y + collisionSpeed))
		{
			isMoving = true;
		}
		else
		{
			while(place_free(x, y - 1))
			{
				y -= 1;
			}
			vspeed = 0;
		}
	}
}
if(etat != etatId.KICK)
{
	if(isMoving)
	{
	
		etat = etatId.WALK;
	
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

if(!place_free(x + collisionSpeed, y) && dir >= directionId.RIGHT)
{
	hspeed = 0;
}
if(!place_free(x + collisionSpeed, y) && dir >= directionId.LEFT && dir < directionId.RIGHT)
{
	hspeed = 0;
}
if(!place_free(x, y + collisionSpeed) && (dir == directionId.FRONT || dir == directionId.FRONT_LEFT || dir == directionId.FRONT_RIGHT))
{
	vspeed = 0;
}
if(!place_free(x, y - collisionSpeed) && (dir == directionId.BACK || dir == directionId.BACK_LEFT || dir == directionId.BACK_RIGHT))
{
	vspeed = 0;
}



if(dir == directionId.FRONT)
{
	if(etat == etatId.IDLE)
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
		if(sprite_index != sprWalkFront)
		{
			sprite_index = sprWalkFront;
			image_index = 0;
		}
	}
}

if(dir == directionId.BACK)
{
	if(etat == etatId.IDLE)
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
		if(sprite_index != sprWalkFront)
		{
			sprite_index = sprWalkFront;
			image_index = 0;
		}
	}
}

if(dir >= directionId.LEFT && dir < directionId.RIGHT)
{
	if(etat == etatId.IDLE)
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
		if(sprite_index != sprWalkFront  || image_xscale >= 0)
		{
			sprite_index = sprWalkFront;
			image_index = 0;
			image_xscale = -abs(image_xscale);
		}
	}
}

if(dir >= directionId.RIGHT)
{
	if(etat == etatId.IDLE)
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
		if(sprite_index != sprWalkFront || image_xscale < 0)
		{
			sprite_index = sprWalkFront;
			image_index = 0;
			image_xscale = abs(image_xscale);	
		}
	}
}

if(etat == etatId.KICK)
{
	if(image_index >= 7 && image_index <=9 && hit == 1)
	{
		hit = 0;
		var kickHitbox = instance_create_depth(x, y, 1, objAttackHitbox);
		kickHitbox.image_xscale = image_xscale;
	}
	else if (image_index >= 11)
	{
		etat = etatId.IDLE;
		hit = 1;
	}
	
}

if(inputPrevent >= 0) inputPrevent--;