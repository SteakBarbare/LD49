/// @function						srcPartBloodSplash();
/// @description					Create blood particles type
function srcPartBloodSplash() {

	if(!part_system_exists(global.particlesSys)){
		global.particlesSys = part_system_create();
	}

	global.bloodParticle = part_type_create();

	part_type_shape(global.bloodParticle, pt_shape_pixel);
	part_type_size(global.bloodParticle, 1, 3, -0.05, 0);
	part_type_color2(global.bloodParticle, c_red, c_maroon);
	part_type_speed(global.bloodParticle, 0.5, 2, 0, 0);
	part_type_direction(global.bloodParticle, 0, 360, random_range(-1, 1), 0);
	part_type_gravity(global.bloodParticle, 0.1, 270);
	part_type_life(global.bloodParticle, 25, 50);


	global.acidParticle = part_type_create();

	part_type_shape(global.acidParticle, pt_shape_pixel);
	part_type_size(global.acidParticle, 1, 3, -0.05, 0);
	part_type_color2(global.acidParticle, c_lime, c_green);
	part_type_speed(global.acidParticle, 0.5, 2, 0, 0);
	part_type_direction(global.acidParticle, 0, 360, random_range(-1, 1), 0);
	part_type_gravity(global.acidParticle, 0.1, 270);
	part_type_life(global.acidParticle, 25, 50);



}
