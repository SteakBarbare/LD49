if(objStarHitbox.isActive)
{
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, 1, 0, c_yellow, 1)
}
else
{
	draw_self();
}