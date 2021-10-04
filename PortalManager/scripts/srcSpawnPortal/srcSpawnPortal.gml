// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function srcSpawnPortal()
{
	var region = argument[0];
	var mx = 0;
	var my = 0;
	
	var portal, pType;
	
	if(region == 1)
	{
		mx = room_width/2;
		my = 0;
	}
	else if(region == 2)
	{
		mx = room_width/2;
		my = 0;
	}
	else if(region == 3)
	{
		mx = room_width/2;
		my = room_height/2;
	}
	
	var pTypeId = irandom(2);
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
	portal = instance_create_depth(0, 0, 1, pType);
	portal.x = irandom_range(0, room_width)
	portal.y = irandom_range(0, room_height)
	with(portal)
	{
		while(place_meeting(x, y, objSolidTemplate) || distance_to_object(objPj) < 800 || distance_to_object(instance_nearest(x, y, objPortalTemplate)) < 800)
		{
			show_debug_message("boucle portail")
			portal.x = irandom_range(0, room_width)
			portal.y = irandom_range(0, room_height)
		}
	}
}