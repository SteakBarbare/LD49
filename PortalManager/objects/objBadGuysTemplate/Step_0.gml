depth = -bbox_bottom;

if(life == 0)
{
	instance_destroy();
}

collisionDir = -1;
if(etat != etatId.BUMP )
{
	if(isMoving)
	{
		etat = etatId.WALK;
		dir = actualDir;
		switch(actualDir)
		{
			case directionId.FRONT:
				vspeed = vSpeed;
				hspeed = 0;
				break;
		
			case directionId.BACK:
				vspeed = -vSpeed;
				hspeed = 0;
				break;
		
			case directionId.LEFT:
				vspeed = 0;
				hspeed = -hSpeed;
				break;
		
			case directionId.BACK_LEFT:
				vspeed = -vSpeed;
				hspeed = -hSpeed;
				break;
		
			case directionId.FRONT_LEFT:
				vspeed = vSpeed;
				hspeed = -hSpeed;
				break;
		
			case directionId.RIGHT:
				vspeed = 0;
				hspeed = hSpeed;
				break;
		
			case directionId.BACK_RIGHT:
				vspeed = -vSpeed;
				hspeed = hSpeed;
				break;
		
			case directionId.FRONT_RIGHT:
				vspeed = vSpeed;
				hspeed = hSpeed;
				break;
		}

	}
}
else
{
	if(!bumpStart)
	{
		bumpStart = true;
		alarm[10] = room_speed * 0.2;
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
}

if(place_meeting(x + collisionSpeed, y, objSolidTemplate) && dir >= directionId.RIGHT)
{
	if(dir == directionId.RIGHT) dir = directionId.LEFT;
	else if(dir == directionId.BACK_RIGHT) dir = directionId.BACK_LEFT;
	else if(dir == directionId.FRONT_RIGHT) dir = directionId.FRONT_LEFT;
	hspeed = -hSpeed;
	actualDir = dir;
}
if(place_meeting(x - collisionSpeed, y, objSolidTemplate) && dir >= directionId.LEFT && dir < directionId.RIGHT)
{
	if(dir == directionId.LEFT) dir = directionId.RIGHT;
	else if(dir == directionId.BACK_LEFT) dir = directionId.BACK_RIGHT;
	else if(dir == directionId.FRONT_LEFT) dir = directionId.FRONT_RIGHT;
	hspeed = hSpeed;
	actualDir = dir;
}

if(place_meeting(x, y + collisionSpeed, objSolidTemplate) && (dir == directionId.FRONT || dir == directionId.FRONT_LEFT || dir == directionId.FRONT_RIGHT))
{
	if(dir == directionId.FRONT) dir = directionId.BACK;
	else if(dir == directionId.FRONT_LEFT) dir = directionId.BACK_RIGHT;
	else if(dir == directionId.FRONT_RIGHT) dir = directionId.BACK_LEFT;
	vspeed = -vSpeed;
	actualDir = dir;
}
if(place_meeting(x, y - collisionSpeed, objSolidTemplate) && (dir == directionId.BACK || dir == directionId.BACK_LEFT || dir == directionId.BACK_RIGHT))
{
	if(dir == directionId.BACK) dir = directionId.FRONT;
	else if(dir == directionId.BACK_RIGHT) dir = directionId.FRONT_RIGHT;
	else if(dir == directionId.BACK_LEFT) dir = directionId.FRONT_LEFT;
	vspeed = vSpeed;
	actualDir = dir;
}

if(dir == directionId.FRONT)
{
	if(etat == etatId.IDLE || etat == etatId.BUMP)
	{
		if(image_xscale < 0) image_xscale = abs(image_xscale);
		if(sprite_index != spriteIdleFront)
		{
			sprite_index = spriteIdleFront;
			image_index = 0;
		}
	}
	else if(etat == etatId.WALK)
	{
		if(image_xscale < 0) image_xscale = abs(image_xscale);
		if(sprite_index != spriteWalkFront)
		{
			sprite_index = spriteWalkFront;
			image_index = 0;
		}
	}
}

if(dir == directionId.BACK)
{
	if(etat == etatId.IDLE || etat == etatId.BUMP)
	{
		if(sprite_index != spriteIdleBack)
		{
			sprite_index = spriteIdleBack;
			image_index = 0;
			image_xscale = abs(image_xscale);		
		}
	}
	else if(etat == etatId.WALK)
	{
		if(sprite_index != spriteWalkBack)
		{
			sprite_index = spriteWalkBack;
			image_index = 0;
			image_xscale = abs(image_xscale);
		}
	}
}

if(dir >= directionId.LEFT && dir < directionId.RIGHT)
{
	if(etat == etatId.IDLE || etat == etatId.BUMP)
	{
		if(sprite_index != spriteIdleSide || image_xscale >= 0)
		{
			sprite_index = spriteIdleSide;
			image_index = 0;
			image_xscale = -abs(image_xscale);
		}
	}
	else if(etat == etatId.WALK)
	{
		if(sprite_index != spriteWalkSide  || image_xscale >= 0)
		{
			sprite_index = spriteWalkSide;
			image_index = 0;
			image_xscale = -abs(image_xscale);
		}
	}
}

if(dir >= directionId.RIGHT)
{
	if(etat == etatId.IDLE || etat == etatId.BUMP)
	{
		if(sprite_index != spriteIdleSide || image_xscale < 0)
		{
			sprite_index = spriteIdleSide;
			image_index = 0;
			image_xscale = abs(image_xscale);	
		}
	}
	else if(etat == etatId.WALK)
	{
		if(sprite_index != spriteWalkSide || image_xscale < 0)
		{
			sprite_index = spriteWalkSide;
			image_index = 0;
			image_xscale = abs(image_xscale);	
		}
	}
}
