if(surface_exists(objBloodSurface.bloodSurface)){
	surface_set_target(objBloodSurface.bloodSurface);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
	
	surface_reset_target();
}else{
	objBloodSurface.bloodSurface = surface_create(room_width, room_height);
}
