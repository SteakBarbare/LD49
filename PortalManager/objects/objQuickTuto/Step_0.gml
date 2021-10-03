if(first_loop){
	image_angle = lerp(image_angle, 10, 0.01){
		if(image_angle >= 9.8){
			first_loop = false;
		}
	}
} else {
	image_angle = lerp(image_angle, -10, 0.01)
	if(image_angle <= -9.8){
		first_loop = true;	
	}
}