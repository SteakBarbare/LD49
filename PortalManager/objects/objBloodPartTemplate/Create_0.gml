image_speed = 0;
image_index = irandom_range(0, image_number-1);
image_xscale = random_range(0.05, 0.5);
image_yscale = random_range(0.05, 0.5);
image_angle = random_range(0, 359);

direction = random_range(0, 359);

xExtra = x + lengthdir_x(irandom_range(40, 75), direction);
yExtra = y + lengthdir_y(irandom_range(40, 75), direction);

travelSpeed = random_range(0.4, 4);

isSmearing = false;
smearTime = 3;
smearTimer = smearTime;