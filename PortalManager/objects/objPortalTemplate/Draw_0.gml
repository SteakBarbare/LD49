if(isActivated)
{
	draw_self();
}
else
{	
	draw_sprite(pressEportal, flipEspritePortal, x + 10, y -10);
	draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, 0.5)
}