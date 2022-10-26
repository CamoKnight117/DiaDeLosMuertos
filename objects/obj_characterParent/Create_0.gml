groundX = x; //groundX and groundY are used as placeholders for where the shadow should be drawn, and
groundY = y; //also where the player should land after their jump.

//control states used in scr_input
left = 0;
right = 0;
up = 0;
down = 0;
sprint = 0;
basicAttack = 0;



//Player states:
grounded = true; //Is the player on the ground?
knockedDown = false; //Has the player been knocked down?
isHit = false; //Has the player been hit by an enemy?
hitOrigin = 0; //Which side were you hit from? -1 = left, 1 = 
knockbackVelocity = 0;

isAttacking = false; //Is the player attacking?
idle = true;
running = false;
sprinting = false;

attackingCounter = 0;

//Sprite/Animation variables
animationFPS = 6;
frameCounter = 0;
frameIndex = 0;
idleSprite = spr_playerIdle;
attackingSprite = spr_playerIdle;
runningSprite = spr_playerWalkingSpritesheet;
sprintingSprite = spr_playerWalkingSpritesheet;
hitSprite = spr_enemyHit;
image_speed = 0;

HP = 100;
stunCounter = 0;

//Movement speeds for scr_movement
horRunSpeed = 1.5;
verRunSpeed = .75;
sprintMultiplier = 2; //must be >= 1

//jumpVariables
jumpPower = 7; //Starting velocity of a jump that decays by jumpDrag
jumpVelocity = 0; //Keeps track of current jump velocity
jumpDrag = 0.25; //How much the jump velocity changes per frame
jumpFeather = 2; //How much slower the fall from the peak of the jump should be, 2 = half as fast fall
jumpDelay = 2; //Time you have to wait between jumps (To prevent jump spam)
jumpDelayCounter = 0; //Counts the frames left before player can jump again
jumpPosition = 0; //Keeps track of the players height in their jump

shadow = instance_create_depth(groundX,groundY,depth + 1,obj_shadow);
alarm[0] = 1;

