
instance.x = lerp(instance.x, destination.x, 0.03)
instance.y = lerp(instance.y, destination.y, 0.03)
var arrived = false;
var d = dir;
var dest = destination;
var s = start;
with(instance)
{
	if(x <= 0 + sprite_width/2 || x >= room_width - sprite_width/2 || y <= 0 + sprite_height/2 || y >= room_height -sprite_height/2)
	{
		arrived = true;
	}
	if(point_distance(x, y, s.x, s.y) > sprite_get_height(sprMobRandomDir) || x <= 0 + sprite_width/2 || x >= room_width - sprite_width/2 || y <= 0 + sprite_height/2 || y >= room_height -sprite_height/2)
	{
		if(place_meeting(x, y, objSolidTemplate))
		{
			var dX, dY;
			dX = 0;
			dY = 0;
			if(d >= directionId.RIGHT)
				dX = -1;
			else if(d >= directionId.LEFT)
				dX = 1;
			else if(d == directionId.FRONT)
				dY = -1;
			else if(d == directionId.FRONT_LEFT)
			{
				dX = 1;
				dY = -1;
			}
			else if(d == directionId.FRONT_RIGHT)
			{
				dX = -1;
				dY = -1;
			}
			else if(d == directionId.BACK)
				dY = 1;
			else if(d == directionId.BACK_LEFT)
			{
				dX = 1;
				dY = 1;
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
			while(place_meeting(x+dX, y+dY, objSolidTemplate))
			{
				x = x+dX;
				y = y+dY;
			}
				
			arrived = true;
			
		}
		
		if(point_distance(x, y, dest.x, dest.y) < 2)
		{
			arrived = true;
		}
	}
}
hasArrived = arrived;
	
	
	
if(hasArrived)
{
	instance.isMoving = false;
	instance_destroy();
}


time += 0.1