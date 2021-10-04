draw_sprite(sprMessageVal2, -1, x, y);

if(point_in_rectangle(mouse_x, mouse_y, x, y, x+ sprite_get_width(sprMessageVal2), y + sprite_get_height(sprMessageVal2))){
	if(mouse_check_button_pressed(mb_right)){
		if(objVal.canDelete){
			objVal.counterMessageDeleted +=1;
			objVal.canDelete = false;
			instance_destroy();
		}
	}
}
