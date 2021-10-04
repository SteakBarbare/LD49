if(point_in_rectangle(mouse_x, mouse_y, x - sprite_width/2 , y - sprite_height/2, x + sprite_width/2, y + sprite_height/2)){
	is_in = true;
	if(!in_transition){
		image_xscale = 1.2
		image_yscale = 1.2
	}
	if(image_xscale == 1.2) in_transition = true;
} else{
	is_in = false;
	image_xscale = lerp(image_xscale, 1, 0.2);
	image_yscale = lerp(image_xscale, 1, 0.2);
	in_transition = false;
}

if(is_in && in_transition){
	if(image_xscale == 1.2){
		can_down = true;
	}
	if(can_down){
		image_xscale = lerp(image_xscale, 1.15, 0.2);
		image_yscale = lerp(image_xscale, 1.15, 0.2);
		if(image_xscale == 1.15){
			can_up = true;
		}
	}else if (can_up){
		image_xscale = lerp(image_xscale, 1.2, 0.2);
		image_yscale = lerp(image_xscale, 1.2, 0.2);
	}
	
}