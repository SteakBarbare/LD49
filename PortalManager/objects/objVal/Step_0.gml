
if(counterMessageDeleted >= 10){
	alarm[0] = 1;
}
if(isFinished){
	image_index = 2;
	instance_destroy(objMessageVal);
	xPosDrawVal = lerp(xPosDrawVal, window_get_width()+120, 0.01);
}