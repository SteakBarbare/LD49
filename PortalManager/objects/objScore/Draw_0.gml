if(room == rm_gameover && timer > 0) {
	draw_set_font(Font1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(room_width / 2, room_height / 2, ("You survived : " + string(minutes) + "m " + string(secondes) + "s"));
}