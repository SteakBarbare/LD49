randomXMessage = irandom_range(border, room_width - (sprite_get_width(sprMessageVal2) + border));
randomYMessage = irandom_range(border, room_height - (sprite_get_height(sprMessageVal2) + border));
instance_create_depth(randomXMessage, randomYMessage, depthLower--, objMessageVal);
if(originalSpeed > 0.2){
	originalSpeed -= 0.1;
}
alarm[2] =  originalSpeed* room_speed;
