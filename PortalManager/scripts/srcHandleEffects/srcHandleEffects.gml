/// @function                            srcHandleEffects();
/// @param  {string}      effect		 effect that is going to fuuf

function srcHandleEffects() {
	
	var effect = argument[0];

	switch(effect) {
		case "slow":
			hspeed *= 0.75;
			vspeed *= 0.75;
			break;
			
		default:
			show_debug_message("default")
			break;
	}
}