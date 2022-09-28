groundX = x; //groundX and groundY are used as placeholders for where the shadow should be drawn, and
groundY = y; //also where the player should land after their jump.

//control states used in scr_input
left = 0;
right = 0;
up = 0;
down = 0;
sprint = 0;

//Player states:
grounded = true; //Is the player on the ground?
knockedDown = false; //Has the player been knocked down?
isHit = false; //Has the player been hit by an enemy?
isAttacking = false; //Is the player attacking?

stunCounter = 0;

//Movement speeds for scr_movement
horRunSpeed = 2;
verRunSpeed = 1;
sprintMultiplier = 2; //must be >= 1



//jumpVariables
jumpPower = 8; //Starting velocity of a jump that decays by jumpDrag
jumpVelocity = 0; //Keeps track of current jump velocity
jumpDrag = 0.25; //How much the jump velocity changes per frame
jumpFeather = 2; //How much slower the fall from the peak of the jump should be, 2 = half as fast fall
jumpDelay = 2; //Time you have to wait between jumps (To prevent jump spam)
jumpDelayCounter = 0; //Counts the frames left before player can jump again
jumpPosition = 0; //Keeps track of the players height in their jump

collisionTracker = instance_create_depth(groundX,groundY,depth + 1,obj_placeholder);
alarm[0] = 1;

