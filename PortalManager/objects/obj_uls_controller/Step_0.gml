/// @description Particle Spawn

	//Particles
	if (surf_particles)
	{
		var cam_id	= view_get_camera(view_current);
		var cam_x	= camera_get_view_x(cam_id);
		var cam_y	= camera_get_view_y(cam_id);
		var cam_w	= camera_get_view_width(cam_id);
		var cam_h	= camera_get_view_height(cam_id);
	
		part_particles_create(part_sys, cam_x + random(cam_w), cam_y + random(cam_h*0.75), part_dust_light, choose(2,3));
	}
	if(!reverse && factor < 0.8 && objCore.alarm[0] < room_speed*60)
	{
		factor += room_speed * 0.000005;
	}
	if(reverse && factor > 0)
	{
		factor -= room_speed * 0.00001;
	}

	uls_set_shadow_color(factor, c_black);