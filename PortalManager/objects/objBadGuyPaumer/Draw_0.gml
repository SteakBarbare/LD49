if(dir == directionId.FRONT)
{
	draw_sprite(sprite_index, 0, x, y)
}
else if(dir == directionId.BACK)
{
	draw_sprite(sprite_index, 1, x, y)
}
else if(dir >= directionId.LEFT && dir < directionId.RIGHT)
{
	draw_sprite(sprite_index, 2, x, y)
}
else
{
	draw_sprite(sprite_index, 3, x, y)
}