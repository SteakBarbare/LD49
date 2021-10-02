if(event < 5)
{
	var mur = objDestructibleWall;
	switch(event)
	{
		case 0:
			mur = objDestructibleWall;
			break;
		
		case 1:
			mur = objQuanticWall;
			break;
			
		case 2:
			mur = objDestructibleWall;
			break;
	}
	
	instance_create_depth(x, y, 1, mur);
	instance_destroy();
}
else
{
	instance_destroy()
}