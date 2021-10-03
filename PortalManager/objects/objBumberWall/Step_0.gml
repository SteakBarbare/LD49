event_inherited();

if(!isMoving && !col)
{
	instance_create_depth(x, y, 1, objBumberWallCollision);
	col = true;
}

if(life <= 0) instance_destroy();