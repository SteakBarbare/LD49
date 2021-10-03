randomXMessage = irandom_range(border, room_width - (sprite_get_width(sprMessageVal) + border));
randomYMessage = irandom_range(border, room_height - (sprite_get_height(sprMessageVal) + border));
instance_create_depth(randomXMessage, randomYMessage, depthLower--, objMessageVal);
alarm[2] =  0.2* room_speed;
