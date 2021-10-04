if(hasEncouterObstacle)
{
	draw_set_alpha(random(1))
}


if(dir == directionId.RIGHT || dir == directionId.FRONT)
	draw_rectangle_color(xStart-10, yStart-10, x+10, y+10, c_red, c_red, c_white, c_white, false);
else
	draw_rectangle_color(xStart-10, yStart-10, x+10, y+10, c_red, c_red, c_white, c_white, false);
	
draw_set_alpha(1);