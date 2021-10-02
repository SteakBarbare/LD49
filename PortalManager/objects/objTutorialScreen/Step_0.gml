if(!stop_it){
	x = lerp(x, -100, 0.2);
}else{
	x = lerp(x, 0, 0.05);
}

if(x <= -80){
	stop_it = true;
}

