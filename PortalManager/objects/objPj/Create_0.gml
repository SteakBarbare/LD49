event_inherited()
enum directionId
{
	FRONT = 0,
	BACK = 1,
	
	LEFT = 2,
	FRONT_LEFT = 3,
	BACK_LEFT = 4,
	
	RIGHT = 5,
	FRONT_RIGHT = 6,
	BACK_RIGHT = 7,
}
enum etatId
{
	IDLE = 0,
	WALK = 1,
	KICK = 2,
	BUMP = 3,
	PUSH = 4
}

isSlowed = false;
isSpeeded = false;

bumpStart = false;

dir = directionId.FRONT;
superBump = false;
bumpStrength = 0;

etat = etatId.IDLE;
hSpeed = 3;
vSpeed = 3;

// Variables for Effects script
isStun = false;
stunCooldown = false;
iceCooldown = false;
newHspeed = 0;
newVspeed = 0;

invertedControl = false;


effectsActive = [];

collisionSpeed = hSpeed + 2;
collisionDir = -1;

inputPrevent = -1;

dirBeforeKick = -1;
hit = 1;

bloodiedPrints = 0;

