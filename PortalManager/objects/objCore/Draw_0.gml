draw_self();
draw_set_font(Font2);
draw_set_halign(fa_center)
draw_set_valign(fa_center)
color = c_white;
if (alarm[0] < room_speed * 10)
{
	color = c_red;
}
else if (alarm[0] < room_speed * 30)
{
	color = c_orange;
}
else if(alarm[0] < room_speed * 45)
{
	color = c_yellow;
}

draw_text_color(602, 275, alarm[0]  / room_speed, color, color, color, color, 1);