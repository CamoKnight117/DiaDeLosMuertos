// This script handles movement of the character, with the exception of attacks.
function scr_movement() {
	
	beginAnimation = false;
	
	if(isHit) //If you're hit, don't move, and decrement stun variables as necessary
	{
		stunMechanics();
	}
	else{	//Otherwise, worry about movement and attacks
		
		attackMechanics();		
		
		if(isAttacking == false) //You can't initiate a jump if attacking
		{		
			walkMovement();
			jumpAction();	
		}
	}
	jumpMovement();	
	
	y = groundY - jumpPosition;
	x = groundX;
	
	depth = -1*groundY; //Set the depth of the object so that they draw in front of the right things
}

function stunMechanics(){
			if(stunCounter > 0)
	{
			stunCounter--;
			if(stunCounter == 0)
			{
				isHit = false;
			}
			
			if(knockbackVelocity > 0)
			{
			groundX -= hitOrigin*knockbackVelocity;
			knockbackVelocity--;
			}
	}
}

function attackMechanics(){
			if(isAttacking)
		{
			if(attackingCounter >= attackLength)
			{
				isAttacking = false;
				instance_destroy(attack);
			}
		}	
		else if(basicAttack && grounded && isAttacking != true) //Check if isAttacking needs to be set to true
		{
			isAttacking = true;
			running = false;
			sprinting = false;
			idle = false;
			beginAnimation = true;
			attackingCounter = 0;
			attack = instance_create_depth(x,y,depth,obj_basicAttack);	
			if(image_xscale = 1)
			{
			attack.x = x + attack.xOffset;
			attack.y = y + attack.yOffset;
			}
			else
			{
				attack.x = x - attack.sprite_width - attack.xOffset;
				attack.y = y + attack.yOffset; 
			}					
			attack.Owner = self;
			attackLength = attack.animationLength;			
		}
}

function walkMovement(){
	horizontal_dir = right - left; //Get movement directions from input
			vertical_dir = down - up;
	
		//character state variables updates
			if(horizontal_dir != 0)
			{
				image_xscale = horizontal_dir;
			}
			if(vertical_dir == -1 and horizontal_dir != -1)
			{
				image_xscale = 1;
			}
			if(vertical_dir == 1 and horizontal_dir != 1)
			{
				image_xscale = -1;
			}
	
				if(horizontal_dir != 0 || vertical_dir != 0)
			{
						idle = false;
				if(sprint == 0)
				{
					running = true;
					sprinting = false;
				}
				else
				{
					running = false;
					sprinting = true;
				}
			}
			else
			{
				idle = true;
			}

			//Walking Mechanics
	
			//This is the case the player is walking diagonally up and right, or down and left
			//The player moves too fast in x direction in those cases without this correction
			if((horizontal_dir == 1 and vertical_dir == -1) or (horizontal_dir == -1 and vertical_dir == 1) )
			{
				
				groundX += -1 * verRunSpeed * vertical_dir;					
				groundY += verRunSpeed * vertical_dir;
				
				if(sprint)
				{
				var sprintBonus = verRunSpeed * (sprintMultiplier - 1)
				groundY +=  sprintBonus * vertical_dir;
				groundX += sprintBonus * horizontal_dir;
				}
			}
			else //Other movement cases
			{
					groundX += horRunSpeed * horizontal_dir;
					groundX -= verRunSpeed * vertical_dir;
					groundY += verRunSpeed * vertical_dir;

					if(sprint)
					{
					var sprintBonus = verRunSpeed * (sprintMultiplier - 1)
					groundY +=  sprintBonus * vertical_dir;
					groundX +=  sprintBonus * horizontal_dir;
					groundX -= sprintBonus * vertical_dir;
					}
			}
}


function jumpMovement(){ //Things to always do if you're in the air
	if(grounded == false)
	{
			if(isHit)
			{
				show_debug_message("Hit while jumping");
			}
						if(!grounded)
			{
			jumpPosition += jumpVelocity;
			}

			if(jumpPosition <= 0)
			{
			jumpPosition = 0;
			jumpVelocity = 0;
			grounded = true;
			}
			else
			{
				if(jumpVelocity > 0)
				{
					jumpVelocity -= jumpDrag;
				}
				else
				{
					jumpVelocity -= jumpDrag/jumpFeather;	
				}
			}
	}
	if(jumpDelayCounter > 0)
	{
	jumpDelayCounter--; //Decrement
	}
}

function jumpAction(){
			//Jumping Mechanics
			if(space && grounded && jumpDelayCounter == 0 && isHit == false)
			{
				grounded = false;
				jumpVelocity = jumpPower;
				jumpDelayCounter = jumpDelay*fps; 
			}
}