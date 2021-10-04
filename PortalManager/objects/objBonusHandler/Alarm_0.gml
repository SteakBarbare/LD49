getNameBuff = listOfBonnus[irandom_range(0, limitRangeBonus)];
instance_create_depth(xPos, yPos, -2000 ,getNameBuff);
show_debug_message(object_get_name(getNameBuff));
bonusProc = false;
