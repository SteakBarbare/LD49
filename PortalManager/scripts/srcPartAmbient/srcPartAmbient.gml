/// @function						srcPartBloodSplash();
/// @description					Create blood particles type
function srcPartAmbient() {

	if(!part_system_exists(global.particlesSys)){
		global.particlesSys = part_system_create();
	}


#region Fog Particles
	global.fogParticle = part_type_create();

	part_type_shape(global.fogParticle, pt_shape_smoke);
	part_type_size(global.fogParticle, 2, 5, 0.01, 0);
	part_type_orientation(global.fogParticle, 0, 359, 0, 0, 0);
	part_type_speed(global.fogParticle,-0.1,0.1,0,0);
	part_type_direction(global.fogParticle,0,359,0,0);
	
	part_type_blend(global.fogParticle, 1);
	part_type_alpha3(global.fogParticle, 0.025, 0.030, 0.035);
	part_type_color3(global.fogParticle, c_white, c_gray, c_dkgray);

	part_type_life(global.fogParticle, 400, 600);
#endregion

#region Quantic Particles
	global.explosionParticle = part_type_create();

	part_type_shape(global.explosionParticle, pt_shape_explosion);
	part_type_size(global.explosionParticle, 2, 10, 0.02, 0);
	part_type_orientation(global.explosionParticle, 0, 359, 0, 0, 0);
	part_type_speed(global.explosionParticle,-0.1,0.1,0,0);
	part_type_direction(global.explosionParticle,0,359,0,0);
	
	part_type_blend(global.explosionParticle, 1);
	part_type_alpha3(global.explosionParticle, 0.045, 0.50, 0.055);
	part_type_color3(global.explosionParticle, c_gray, c_orange, c_red);

	part_type_life(global.explosionParticle, room_speed, room_speed * 6);
#endregion

#region Quantic Particles
	global.quanticParticle = part_type_create();

	part_type_shape(global.quanticParticle, pt_shape_smoke);
	part_type_size(global.quanticParticle, 0.2, 1, 0.02, 0);
	part_type_orientation(global.quanticParticle, 0, 359, 0, 0, 0);
	part_type_speed(global.quanticParticle,-0.1,0.1,0,0);
	part_type_direction(global.quanticParticle,0,359,0,0);
	
	part_type_blend(global.quanticParticle, 1);
	part_type_alpha3(global.quanticParticle, 0.025, 0.030, 0.035);
	part_type_color3(global.quanticParticle, c_blue, c_blue, c_purple);

	part_type_life(global.quanticParticle, 50, 100);
#endregion

#region Obstacle Portal
	global.obstaclePortal = part_type_create();

	part_type_shape(global.obstaclePortal, pt_shape_smoke);
	part_type_size(global.obstaclePortal, 0.5, 1.5, 0.02, 0);
	part_type_orientation(global.obstaclePortal, 0, 359, 0, 0, 0);
	part_type_speed(global.obstaclePortal,-0.1,0.1,0,0);
	part_type_direction(global.obstaclePortal,0,359,0,0);
	
	part_type_blend(global.obstaclePortal, 1);
	part_type_alpha3(global.obstaclePortal, 0.04, 0.035, 0.030);
	part_type_color3(global.obstaclePortal, c_white, c_blue, c_purple);

	part_type_life(global.obstaclePortal, 50, 100);
#endregion

#region Obstacle Portal
	global.monsterPortal = part_type_create();

	part_type_shape(global.monsterPortal, pt_shape_smoke);
	part_type_size(global.monsterPortal, 0.5, 1.5, 0.02, 0);
	part_type_orientation(global.monsterPortal, 0, 359, 0, 0, 0);
	part_type_speed(global.monsterPortal,-0.1,0.1,0,0);
	part_type_direction(global.monsterPortal,0,359,0,0);
	
	part_type_blend(global.monsterPortal, 1);
	part_type_alpha3(global.monsterPortal, 0.04, 0.035, 0.030);
	part_type_color3(global.monsterPortal, c_white, c_orange, c_red);

	part_type_life(global.monsterPortal, 50, 100);
#endregion

#region Debuff Portal
	global.debuffPortal = part_type_create();

	part_type_shape(global.debuffPortal, pt_shape_smoke);
	part_type_size(global.debuffPortal, 0.5, 1.5, 0.02, 0);
	part_type_orientation(global.debuffPortal, 0, 359, 0, 0, 0);
	part_type_speed(global.debuffPortal,-0.1,0.1,0,0);
	part_type_direction(global.debuffPortal,0,359,0,0);
	
	part_type_blend(global.debuffPortal, 1);
	part_type_alpha3(global.debuffPortal, 0.04, 0.035, 0.030);
	part_type_color3(global.debuffPortal, c_white, c_green, c_lime);

	part_type_life(global.debuffPortal, 50, 100);
#endregion

#region Spore Fog Particles
	global.sporeFogParticle = part_type_create();

	part_type_shape(global.sporeFogParticle, pt_shape_smoke);
	part_type_size(global.sporeFogParticle, 0.1, 1, 0.01, 0);
	part_type_orientation(global.sporeFogParticle, 0, 359, 0, 0, 0);
	part_type_speed(global.sporeFogParticle, 0.5, 1, -0.01, 0);
	part_type_direction(global.sporeFogParticle,0, 359, 0, 0);
	
	part_type_blend(global.sporeFogParticle, 1);
	part_type_alpha3(global.sporeFogParticle, 0.1, 0.08, 0);
	part_type_color3(global.sporeFogParticle, c_green, c_green, c_lime);

	part_type_life(global.sporeFogParticle, 100, 200);
#endregion

#region Curse Fx
	global.curseFx = part_type_create();

	part_type_shape(global.curseFx, pt_shape_flare);
	part_type_size(global.curseFx, 0.5, 0.5, 0.01, 0);
	part_type_orientation(global.curseFx, 0, 359, 1, 0, 0);
	part_type_speed(global.curseFx, 0, 0, 0, 0);
	part_type_direction(global.curseFx,0,0,0,0);
	
	part_type_blend(global.curseFx, 1);
	part_type_alpha3(global.curseFx, 1, 0.8, 0);
	part_type_color2(global.curseFx, c_purple, c_red);

	part_type_life(global.curseFx, room_speed * 2, room_speed * 2);
#endregion

#region Curse Fx Tiny
	global.curseFxTiny = part_type_create();

	part_type_shape(global.curseFxTiny, pt_shape_flare);
	part_type_size(global.curseFxTiny, 0.1, 0.5, -0.005, 0);
	part_type_orientation(global.curseFxTiny, 0, 359, 1, 0, 0);
	part_type_speed(global.curseFxTiny, 0.5, 1, -0.01, 0);
	part_type_direction(global.curseFxTiny,0,359,0,0);
	
	part_type_blend(global.curseFxTiny, 1);
	part_type_alpha3(global.curseFxTiny, 0.5, 0.35, 0);
	part_type_color2(global.curseFx, c_purple, c_red);

	part_type_life(global.curseFxTiny, room_speed * 1, room_speed * 2);
#endregion

#region Destruction Smoke
	global.destructionSmoke = part_type_create();

	part_type_shape(global.destructionSmoke, pt_shape_smoke);
	part_type_size(global.destructionSmoke, 0.2, 0.7, 0.01, 0);
	part_type_orientation(global.destructionSmoke, 0, 359, 0, 0, 0);
	part_type_speed(global.destructionSmoke, 0, 0, 0, 0);
	part_type_direction(global.destructionSmoke,0,359,0,0);
	
	part_type_blend(global.destructionSmoke, 1);
	part_type_alpha3(global.destructionSmoke, 0.1, 0.08, 0);
	part_type_color3(global.destructionSmoke, c_white, c_gray, c_dkgray);

	part_type_life(global.destructionSmoke, 100, 200);
#endregion

#region Destruction Smoke Tiny
	global.destructionSmokeTiny = part_type_create();

	part_type_shape(global.destructionSmokeTiny, pt_shape_smoke);
	part_type_size(global.destructionSmokeTiny, 0.1, 0.5, -0.01, 0);
	part_type_orientation(global.destructionSmokeTiny, 0, 359, 0, 0, 0);
	part_type_speed(global.destructionSmokeTiny, 0.5, 1, -0.01, 0);
	part_type_direction(global.destructionSmokeTiny,0,359,0,0);
	
	part_type_blend(global.destructionSmokeTiny, 1);
	part_type_alpha3(global.destructionSmokeTiny, 0.1, 0.08, 0);
	part_type_color3(global.destructionSmokeTiny, c_white, c_gray, c_dkgray);

	part_type_life(global.destructionSmokeTiny, 100, 200);
#endregion

#region Destruction Pottery
	global.destructionPottery = part_type_create();

	part_type_sprite(global.destructionPottery, sprPotteryShard, false, true, true);
	part_type_size(global.destructionPottery, 0.5, 1, -0.01, 0);
	part_type_orientation(global.destructionPottery, 0, 359, 1, 0, 0);
	part_type_speed(global.destructionPottery, 0.5, 2.5, -0.01, 0);
	part_type_direction(global.destructionPottery, 0, 180, random_range(-1, 1), 0);
	part_type_gravity(global.destructionPottery, 0.05, 270);

	part_type_life(global.destructionPottery, 100, 200);
#endregion

#region Destruction Pottery
	global.dirtParticles = part_type_create();

	part_type_sprite(global.dirtParticles, sprCharredDirtFx, false, true, true);
	part_type_size(global.dirtParticles, 0.6, 1.3, -0.01, 0);
	part_type_orientation(global.dirtParticles, 0, 359, 1, 0, 0);
	part_type_speed(global.dirtParticles, 1, 3.5, -0.01, 0);
	part_type_direction(global.dirtParticles, 0, 180, random_range(-1, 1), 0);
	part_type_gravity(global.dirtParticles, 0.05, 270);

	part_type_life(global.dirtParticles, 100, 200);
#endregion

#region Corrupted Particles Up
	global.corruptedParticlesUp = part_type_create();

	part_type_shape(global.corruptedParticlesUp, pt_shape_flare);
	part_type_size(global.corruptedParticlesUp, 0.05, 0.25, 0, 0.05);
	part_type_orientation(global.corruptedParticlesUp, 0, 359, 1, 0, 1);
	part_type_speed(global.corruptedParticlesUp, 1, 2.5, -0.01, 0);
	part_type_direction(global.corruptedParticlesUp, 80, 100, 0, 2);
	
	part_type_blend(global.corruptedParticlesUp, 1);
	part_type_alpha3(global.corruptedParticlesUp, 1, 0.9, 0);
	part_type_color2(global.corruptedParticlesUp, c_red, c_green);

	part_type_life(global.corruptedParticlesUp, room_speed * 5, room_speed * 10);
#endregion

//#region Flipping Coins Particles
//	global.coinsParticles = part_type_create();

//	part_type_sprite(global.coinsParticles, sprCoin, false, true, true);
//	part_type_size(global.coinsParticles, 0.5, 1, -0.01, 0);
//	part_type_orientation(global.coinsParticles, 0, 180, 2, 0, 0);
//	part_type_speed(global.coinsParticles, 0.25, 1.5, -0.01, 0);
//	part_type_direction(global.coinsParticles, 0, 359, random_range(-1, 1), 0);
//	part_type_gravity(global.coinsParticles, 0.025, 270);

//	part_type_life(global.coinsParticles, 50, 100);
//#endregion


}
