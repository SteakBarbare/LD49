// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function srcSpawnPortal()
{
	var region = argument[0];
	var pTypeId = irandom(2);
	var portal, pType;
	switch(pTypeId)
	{
		case 0:
			pType = objObstaclePortal;
			break;
		case 1:
			pType = objMonsterPortal;
			break;
		case 2:
			pType = objDebuffPortal;
			break;
	}
	var xPossible = [200, 980];
	var yPossible = [130, 535];
	
	var wi, he;
	wi = xPossible[1] - xPossible[0];
	he = yPossible[1] - yPossible[0];
	
	var nx, ny;
	
	if(region == 0)
	{
		nx = xPossible[0];
		ny = yPossible[0];
	}
	else if(region == 1)
	{
		nx = xPossible[1];
		ny = yPossible[0];
	}
	else if(region == 2)
	{
		nx = xPossible[0];
		ny = yPossible[1];
	}
	else
	{
		nx = xPossible[1];
		ny = yPossible[1];
	}

	portal = instance_create_depth(0, 0, 1, pType);
	
	with(portal)
	{
		do
		{
			if(nx == xPossible[0])
			{
				x = nx + irandom(wi/2)
			}
			else
			{
				x = nx - irandom(wi/2)
			}
			if(ny == yPossible[0])
			{
				y = ny + irandom(he/2)
			}
			else
			{
				y = ny - irandom(he/2)
			}
		}
		until(!place_meeting(x, y, objSolidTemplate))
		
		
	}
}