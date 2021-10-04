if(counterMessageDeleted >= 10){
	alarm[0] = 1;
}
if(isFinished){
	image_index = 2;
	instance_destroy(objMessageVal);
	xPosDrawVal = lerp(xPosDrawVal, window_get_width()+300, 0.01);
	if(xPosDrawVal >= window_get_width()+10){
		instance_destroy();
	}
}else{
	xPosDrawVal = lerp(xPosDrawVal, xGoal, 0.05);
}