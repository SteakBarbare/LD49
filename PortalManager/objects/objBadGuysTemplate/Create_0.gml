event_inherited()
haveShadow = false;

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
isHit = false;


isMoving = false;
isMovingV = false;
isMovingS = false;
vMove = directionId.FRONT;
hMove = directionId.RIGHT;



isSet = false;

deathSprite = sprMobRandomDeath;

collisionSpeed = hSpeed + 2;