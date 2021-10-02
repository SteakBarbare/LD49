event_inherited();

smearTimer--;

if(smearTimer <= 0 && random(100) > 97){
	smearTimer = smearTime;
	
	var newRubbish = instance_create_depth(x, y, y, objPotteryRubbish);
	newRubbish.smearTimer = 999;
	newRubbish.smearTime = 999;
	
	instance_create_depth(x + irandom_range(-10, 10), y + irandom_range(-10, 10), y, objPotteryShard);

}