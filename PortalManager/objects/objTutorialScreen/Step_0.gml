if(is_open){
	if(!stop_it){
		x = lerp(x, -100, 0.2);
	}else{
		x = lerp(x, 0, 0.05);
	}

	if(x <= -80){
		stop_it = true;
	}
} else {
	if(x <1920){
		x = lerp(x, 1920, 0.1);
	} 
}
if(objKeybind.escapeKey){
	is_open = false;
	stop_it = false;
	
}