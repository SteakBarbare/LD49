xPosDrawVal =0 
yPosDrawVal = room_height - sprite_get_height(sprVal);
xGoal = room_width - sprite_get_width(sprVal);
originalSpeed = 0.8;
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
depth = -3000;

switchIDClick = false;

show_debug_message("??");
