if(!isSet)
{
	isSet = true;
	
	destination = {x : x, y:y}
	start = destination;
	strength = {x : 256, y : 144}
	time = 0;
	switch(dir)
	{
		case directionId.FRONT:
			destination.y += strength.y;
			break;
		case directionId.BACK:
			destination.y -= strength.y;
			break;
		case directionId.LEFT:
			destination.x -= strength.x;
			break;
		case directionId.RIGHT:
			destination.x += strength.x;
			break;	
		case directionId.FRONT_LEFT:
			destination.x -= strength.x;
			destination.y += strength.y;
			break;
		case directionId.FRONT_RIGHT:
			destination.x += strength.x;
			destination.y += strength.y;
			break;
		case directionId.BACK_LEFT:
			destination.x -= strength.x;
			destination.y -= strength.y;
			break;
		case directionId.BACK_RIGHT:
			destination.x += strength.x;
			destination.y -= strength.y;
			break;;
	}


	hasArrived = false;
}
if(!instance_exists(instance))
{
	instance_destroy();
}
else
{
	instance.isMoving = true;
	var arrived = false;
	var d = dir;
	var dest = destination;
	with(instance)
	{
		x = lerp(x, dest.x, 0.03);
		y = lerp(y, dest.y, 0.03);
		if(x <= 0 + sprite_width/2 || x >= room_width - sprite_width/2 || y <= 0 + sprite_height/2 || y >= room_height -sprite_height/2)
		{
			arrived = true;
		}
		else if((place_meeting(x, y, objSolidTemplate) && !place_meeting(x, y, objChieur)))
		{		
			var dX, dY;	
			dX = 0;
			dY = 0;
			if(d >= directionId.RIGHT)
			{
				dX = 1;
			}
			else if(d >= directionId.LEFT)
			{
				dX = -1;
			}	
			else if(d == directionId.FRONT)
			{
				dY = 1;
			}
			else if(d == directionId.FRONT_LEFT)
			{
				dX = -1;
				dY = 1;
			}
			else if(d == directionId.FRONT_RIGHT)
			{
				dX = 1;
				dY = 1;
			}
			else if(d == directionId.BACK)
			{
				dY = -1;
			}
			else if(d == directionId.BACK_LEFT)
			{
				dX = -1;
				dY = -1;
			}
			else if(d == directionId.BACK_RIGHT)
			{
				dX = -1;
				dY = 1;
			}
			if(dX != 0 && dY != 0)
			{
				dX = dX * sqrt(abs(dX));
				dY = dY * sqrt(abs(dY));
			}
			if(place_meeting(x+dX, y+dY, objSolidTemplate))
			{
				x -= dX*3
				y -= dY*3
			}
				
			arrived = true;
			
			
		}
		else if(point_distance(x, y, dest.x, dest.y) < 5)
		{
			arrived = true;
		}
	}	
	
	hasArrived = arrived;
	
	
	
	if(hasArrived)
	{
		instance.isMoving = false;
		instance_destroy();
	}


time += 0.1
}