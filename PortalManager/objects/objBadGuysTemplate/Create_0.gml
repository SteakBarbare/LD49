event_inherited()

life = 2;
invulnerable = false;

etat = etatId.IDLE;
dir = directionId.FRONT;
actualDir = directionId.FRONT;

hSpeed = 0.5;
vSpeed = 0.5;

bumpStart = false;
bumpStrength = 0;
superBump = false;

bloodType = "blood";


isMoving = false;
isMovingV = false;
isMovingS = false;
vMove = directionId.FRONT;
hMove = directionId.RIGHT;

spriteIdleBack = sprMobRandomDir;
spriteIdleFront = sprMobRandomDir;
spriteIdleSide = sprMobRandomDir;

spriteWalkBack = sprMobRandomDir;
spriteWalkFront = sprMobRandomDir;
spriteWalkSide = sprMobRandomDir;

isSet = false;

collisionSpeed = hSpeed + 2;