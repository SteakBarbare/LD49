if(instance_number(objKeybind) > 1){
	instance_destroy();
}

var gp_num = gamepad_get_device_count();

for (var i = 0; i < gp_num; i++;){
	if(gamepad_is_connected(i)){
		isGamepad = true;
		break;
	}else{
		isGamepad = false;
	}
}

if(keyboard_check(vk_f10)){
	hideHud = true;
}else if(keyboard_check(vk_f11)){
	hideHud = false;
}

if(isGamepad){
	keyUp = ((keyboard_check(ord("Z"))) || (keyboard_check(vk_up)) || round(gamepad_axis_value(0, gp_axislv)) == -1 );
	keyRight = ((keyboard_check(ord("D"))) || (keyboard_check(vk_right)) || round(gamepad_axis_value(0, gp_axislh)) == 1 );
	keyDown = ((keyboard_check(ord("S"))) || (keyboard_check(vk_down)) || round(gamepad_axis_value(0, gp_axislv)) == 1 );
	keyLeft = ((keyboard_check(ord("Q"))) || (keyboard_check(vk_left)) || round(gamepad_axis_value(0, gp_axislh)) == -1 );
	eKey = (keyboard_check(ord("E")) || abs(round(gamepad_axis_value(0, gp_axisrh))) == 1 || abs(round(gamepad_axis_value(0, gp_axisrv))) == 1);
	fKey = (keyboard_check(ord("F")) || gamepad_button_check(0, gp_face1));
	fKeyReleased = (keyboard_check_released(ord("F")) || gamepad_button_check_released(0, gp_face1));
	aKey = (keyboard_check(ord("Q")) || gamepad_button_check(0, gp_stickr));
	kKey = (keyboard_check(ord("K")));
	keyShift = keyboard_check(vk_shift) || gamepad_button_check(0, gp_face2);
	keySpaceBar = keyboard_check(vk_space) || gamepad_button_check(0, gp_face3);
	keyEnter = keyboard_check(vk_enter);
	escapeKey = keyboard_check(vk_escape) || gamepad_button_check(0, gp_select);
	clickLeft = mouse_check_button_pressed(mb_left) || gamepad_button_check_pressed(0, gp_shoulderrb);
	clickLeftHold = mouse_check_button(mb_left) || gamepad_button_check(0, gp_shoulderrb);
	clickRight = mouse_check_button(mb_right) || gamepad_button_check(0, gp_shoulderlb);
	switchLeft = gamepad_button_check(0, gp_padl);
	switchRight = gamepad_button_check(0, gp_padr);
	switchUp = gamepad_button_check(0, gp_padu);
	switchDown = gamepad_button_check(0, gp_padd);
	
	
	iKey = keyboard_check(ord("I")) || gamepad_button_check(0, gp_start);
	tabKey = keyboard_check(vk_tab) || gamepad_button_check(0, gp_face4);
	
	gamepadLeftButton = gamepad_button_check(0, gp_shoulderl);
	gamepadRightButton = gamepad_button_check(0, gp_shoulderr);

}else{
		ini_open("config");	
		
		keyUp = (keyboard_check(ord(ini_read_string("Keybind", "Keybind0", "Z"))) || (keyboard_check(vk_up)) );
		keyLeft = (keyboard_check(ord(ini_read_string("Keybind", "Keybind1", "Q"))) || (keyboard_check(vk_left)) );
		keyDown = (keyboard_check(ord(ini_read_string("Keybind", "Keybind2", "S"))) || (keyboard_check(vk_down)) );
		keyRight = (keyboard_check(ord(ini_read_string("Keybind", "Keybind3", "D"))) || (keyboard_check(vk_right)) );
		keyShift = keyboard_check(asset_get_index(ini_read_string("Keybind", "Keybind4", "vk_shift")));
		fKey = ((keyboard_check(ord(ini_read_string("Keybind", "Keybind5", "F")))));
		fKeyReleased = ((keyboard_check_released(ord(ini_read_string("Keybind", "Keybind5", "F")))));
		keySpaceBar = keyboard_check(asset_get_index(ini_read_string("Keybind", "Keybind6", "vk_space")));
		iKey = ((keyboard_check(ord(ini_read_string("Keybind", "Keybind7", "I")))));
		aKey = ((keyboard_check(ord(ini_read_string("Keybind", "Keybind8", "Q")))));
		eKey = ((keyboard_check(ord(ini_read_string("Keybind", "Keybind9", "E")))));
		tabKey = keyboard_check(asset_get_index(ini_read_string("Keybind", "Keybind10", "vk_tab")));
		kKey = (keyboard_check(ord("K")));	
		
		keyEnter = keyboard_check(vk_enter);
		escapeKey = keyboard_check(vk_escape);
		clickLeft = mouse_check_button_pressed(mb_left);
		clickLeftHold = mouse_check_button(mb_left);
		clickRight = mouse_check_button(mb_right);
		
		wheelUp = mouse_wheel_up();
		wheelDown = mouse_wheel_down();
		
		ini_close();
}