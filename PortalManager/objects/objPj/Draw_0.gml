draw_self();
//draw_sprite_ext(sprCollision, -1, x, y, image_xscale, image_yscale, 0, c_white, 1);
draw_set_alpha(0.3)
draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_top, c_red, c_red, c_red, c_red, false);
draw_set_alpha(1);