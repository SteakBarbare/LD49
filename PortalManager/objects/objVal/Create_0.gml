xPosDrawVal = window_get_width() - sprite_get_width(sprVal);
yPosDrawVal = window_get_height() - sprite_get_height(sprVal);

image_speed = 0;
border = 20;

isFinished = false;

depthLower = -2000;

randomXMessage = 0;
randomYMessage = 0;

alarm[0] = 15*room_speed;
alarm[1] = 0.9*room_speed;
alarm[2] = 1*room_speed;
counterMessageDeleted = 0;
canDelete = true; 




