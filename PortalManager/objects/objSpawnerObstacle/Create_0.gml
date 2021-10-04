ev = irandom(16);
dir = irandom(7);
if(ev < 8)
{
	switch(ev)
	{
		case 0:
			mur = objBookshelf;
			break;
		case 1:
			mur = objCloset;
			break;
		case 2:
			mur = objMachina;
			break;
		case 3:
			mur = objTube;
			break;
		case 4:
			mur = objCardbox;
			break;
		case 5:
			mur = objPlante;
			break;
		case 6:
			mur = objTonnal;
			break;
		case 7:
			mur = objTrash;
			break;
	}
}
else if(ev < 12)
{
	mur = objQuanticWall;
}
else
{
	mur = objBumberWall;
}
instance = instance_create_depth(x, y, 1, mur);

time = 0

isSet = false;