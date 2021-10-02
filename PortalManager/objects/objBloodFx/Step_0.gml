event_inherited();

smearTimer--;

if(smearTimer <= 0){
	smearTimer = smearTime;
	
	instance_create_depth(x, y, y, objBloodSplatFx);
}