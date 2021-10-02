function srcBloodSplash(argument0, argument1, argument2) {
	var posX, posY, bloodType;

	posX = argument0;
	posY = argument1;
	bloodType = argument2;

	if(bloodType != "None"){
		if(bloodType == "Blood"){
			var blood = floor(random(2));
			if(blood == 0){
				blood = instance_create_depth(posX + random_range(-30, 20), posY + random_range(-15, 15), 1, objBlood);
			}else if(blood == 1){
				blood = instance_create_depth(posX + random_range(-30, 20), posY + random_range(-15, 15), 1, objBlood2);
			}
			blood.image_xscale = random_range(-2, 2);
			blood.image_yscale = random_range(-1.5, 1.5);
		
			// Create blood particles
			part_particles_create(global.particlesSys, posX, posY-20, global.bloodParticle, irandom_range(20, 35));
		
			var bloodSplashNumb = irandom_range(15, 30);
			repeat(bloodSplashNumb){
				instance_create_depth(posX + irandom_range(-10, 10), posY + irandom_range(-10, 10), 1, objBloodFx);
			}
			/*
			var bSplash = instance_create_depth(posX + random_range(-10, 10), posY + random_range(-2, 2), -y, objBloodSplash);
			bSplash.image_xscale = random_range(-1.5, 1.5);
			*/
		}else if(bloodType == "Acid"){
			var blood = floor(random(2));
			if(blood == 0){
				blood = instance_create_depth(posX + random_range(-30, 20), posY + random_range(-15, 15), 1, objAcid);
			}else if(blood == 1){
				blood = instance_create_depth(posX + random_range(-30, 20), posY + random_range(-15, 15), 1, objAcid2);
			}
			blood.image_xscale = random_range(-2, 2);
			if(blood.image_xscale > -0.3 && blood.image_xscale < 0.3){
				blood.image_xscale = 0.3 * sign(image_xscale);
			}
			blood.image_yscale = 1;
		
			// Create blood particles
			part_particles_create(global.particlesSys, posX, posY-20, global.acidParticle, irandom_range(20, 35));
		
			var bloodSplashNumb = irandom_range(15, 30);
			repeat(bloodSplashNumb){
				instance_create_depth(posX + irandom_range(-10, 10), posY + irandom_range(-10, 10), 1, objAcidFx);
			}
			/*
			var bSplash = instance_create_depth(posX + random_range(-10, 10), posY + random_range(-2, 2), -y, objBloodSplash);
			bSplash.image_xscale = random_range(-1.5, 1.5);
			*/
		}else if(bloodType == "BloodTiny"){
			var blood = floor(random(2));
			if(blood == 0){
				blood = instance_create_depth(posX + random_range(-30, 20), posY + random_range(-15, 15), 1, objBlood);
			}else if(blood == 1){
				blood = instance_create_depth(posX + random_range(-30, 20), posY + random_range(-15, 15), 1, objBlood2);
			}
			blood.image_xscale = random_range(-1, 1);
			blood.image_yscale = random_range(-1, 1);
		
			// Create blood particles
			part_particles_create(global.particlesSys, posX, posY-20, global.bloodParticle, irandom_range(4, 10));
		
			var bloodSplashNumb = irandom_range(5, 15);
			repeat(bloodSplashNumb){
				var bloodPart = instance_create_depth(posX + irandom_range(-10, 10), posY + irandom_range(-10, 10), 1, objBloodFx);
				bloodPart.travelSpeed = random_range(0.2, 1.5);
			}
		
		}else if(bloodType == "AcidTiny"){
			var blood = floor(random(2));
			if(blood == 0){
				blood = instance_create_depth(posX + random_range(-30, 20), posY + random_range(-15, 15), 1, objAcid);
			}else if(blood == 1){
				blood = instance_create_depth(posX + random_range(-30, 20), posY + random_range(-15, 15), 1, objAcid2);
			}
			blood.image_xscale = random_range(-1, 1);
			if(blood.image_xscale > -0.3 && blood.image_xscale < 0.3){
				blood.image_xscale = 0.3 * sign(image_xscale);
			}
			blood.image_yscale = 1
			var bSplash = instance_create_depth(posX + random_range(-10, 10), posY + random_range(-2, 2), -y, objBloodSplash);
			bSplash.image_xscale = random_range(-1, 1);
			// Create blood particles
			part_particles_create(global.particlesSys, posX, posY-20, global.acidParticle, irandom_range(4, 10));
		
			var bloodSplashNumb = irandom_range(5, 15);
			repeat(bloodSplashNumb){
				var bloodPart = instance_create_depth(posX + irandom_range(-10, 10), posY + irandom_range(-10, 10), 1, objAcidFx);
				bloodPart.travelSpeed = random_range(0.2, 1.5);
			}
	#region Acid Heavy
		}else if(bloodType == "AcidHeavy"){
			var blood = floor(random(2));
			if(blood == 0){
				blood = instance_create_depth(posX + random_range(-30, 20), posY + random_range(-15, 15), 1, objAcid);
			}else if(blood == 1){
				blood = instance_create_depth(posX + random_range(-30, 20), posY + random_range(-15, 15), 1, objAcid2);
			}
			blood.image_xscale = random_range(-2, 2);
			if(blood.image_xscale > -0.3 && blood.image_xscale < 0.3){
				blood.image_xscale = 0.3 * sign(image_xscale);
			}
			blood.image_yscale = 1;
		
			// Create blood particles
			part_particles_create(global.particlesSys, posX, posY-20, global.acidParticle, irandom_range(30, 45));
		
			var bloodSplashNumb = irandom_range(25, 40);
			repeat(bloodSplashNumb){
				var bloodPart = instance_create_depth(posX + irandom_range(-10, 10), posY + irandom_range(-10, 10), 1, objAcidFx);
				bloodPart.travelSpeed = random_range(0.8, 6);
			}
		}
	#endregion
	}



}
