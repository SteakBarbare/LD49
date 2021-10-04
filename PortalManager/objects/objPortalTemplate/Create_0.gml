isActivated = false;
partType = "Obstacle";
randomSpanwerBonus = irandom_range(1, 100);

nbInvoc = 3 + irandom(2);

bonusBuffIncoming = false;
malusBuffIncoming = false;

flipEspritePortal = false;

hasEnded = false;

light = noone;

alarm[2] = random_range(0.1, 1.4) * room_speed;