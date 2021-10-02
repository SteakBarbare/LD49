depth = -bbox_bottom;
var isMoving, isMovingV, isMovingS, vMove, hMove;
isMoving = false;
isMovingV = false;
isMovingS = false;
if(objKeybind.keyLeft xor objKeybind.keyRight)
{
	
	if(objKeybind.keyLeft && place_free(x - collisionSpeed, y))
	{
		hMove = directionId.LEFT;
		isMoving = true;
		isMovingS = true;
	}
	else if(objKeybind.keyRight && place_free(x + collisionSpeed, y)) 
	{
		hMove = directionId.RIGHT;
		isMoving = true;
		isMovingS = true;
	}
}


if(objKeybind.keyUp xor objKeybind.keyDown)
{
	if(objKeybind.keyUp && place_free(x, y - collisionSpeed))
	{
		vMove = directionId.BACK;
		isMoving = true;
		isMovingV = true;
	}
	else if(objKeybind.keyDown && place_free(x, y + collisionSpeed))
	{
		vMove = directionId.FRONT;
		isMoving = true;
		isMovingV = true;
	}
}

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
	etat = etatId.IDLE
	hspeed = 0;
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
}

if(dir == directionId.BACK)
{
	if(etat == etatId.IDLE)
	{
		if(image_xscale < 0) image_xscale = abs(image_xscale);
		if(sprite_index != sprIdleBack)
		{
			sprite_index = sprIdleBack;
			image_index = 0;
			image_xscale = abs(image_xscale);		
		}
	}
	else if(etat == etatId.WALK)
	{
		if(image_xscale < 0) image_xscale = abs(image_xscale);
		if(sprite_index != sprWalkBack)
		{
			sprite_index = sprWalkBack;
			image_index = 0;
			image_xscale = abs(image_xscale);
		}
	}
}

if(dir >= directionId.LEFT && dir < directionId.RIGHT)
{
	if(etat == etatId.IDLE)
	{
		if(sprite_index != sprIdleSide)
		{
			sprite_index = sprIdleSide;
			image_index = 0;
			image_xscale = -abs(image_xscale);
		}
	}
	else if(etat == etatId.WALK)
	{
		if(sprite_index != sprWalkSide)
		{
			sprite_index = sprWalkSide;
			image_index = 0;
			image_xscale = -abs(image_xscale);
		}
	}
}

if(dir >= directionId.RIGHT)
{
	if(etat == etatId.IDLE)
	{
		if(sprite_index != sprIdleSide)
		{
			sprite_index = sprIdleSide;
			image_index = 0;
			image_xscale = abs(image_xscale);	
		}
	}
	else if(etat == etatId.WALK)
	{
		if(sprite_index != sprWalkSide)
		{
			sprite_index = sprWalkSide;
			image_index = 0;
			image_xscale = abs(image_xscale);	
		}
	}
}