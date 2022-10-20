// This script handles movement of the character, with the exception of attacks.
function scr_movement() {
	
	if(isHit) //If you're hit, don't move, and decrement stun variables as necessary
	{
		stunMechanics();
	}
	else{	//Otherwise, worry about movement and attacks
		
		attackMechanics();		
		
		if(isAttacking == false) //You can't initiate a jump if attacking
		{		
			walkMovement();
			jumpMovement();			
		}
	}
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
	}
}

function attackMechanics(){
			if(isAttacking)
		{
			if(attackingCounter == 0)
			{
				isAttacking = false;
			}
			else
			{
			attackingCounter--;
			}
		}
		
		//Check if isAttacking needs to be set to true
		if(basicAttack && grounded && isAttacking != true)
		{
			isAttacking = true;
			var attack = instance_create_depth(x,y,depth,obj_basicAttack);	
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
			attackingCounter = attack.animationLength;			
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
	
			y = groundY - jumpPosition;
			x = groundX;

			//Walking Mechanics
	
			//This is the case the player is walking diagonally up and right, or down and left
			//The player moves too fast in x direction in those cases without this correction
			if((horizontal_dir == 1 and vertical_dir == -1) or (horizontal_dir == -1 and vertical_dir == 1) )
			{
				//Bad collision code that isn't working
				/*
				var yWontCollide = true;
				var xChange = 2*verRunSpeed * vertical_dir;
				var yChange = verRunSpeed * vertical_dir;
				with(collisionTracker)
				{
					yWontCollide = place_free(x, y + yChange)
				}		
				*/
				groundX += -1 * verRunSpeed * vertical_dir;		
				groundX += -1 * verRunSpeed * vertical_dir;
				//if(yWontCollide)
				//{
				groundY += verRunSpeed * vertical_dir;
				//}
				if(sprint)
				{
				var sprintBonus = verRunSpeed * (sprintMultiplier - 1)
				groundY +=  sprintBonus * vertical_dir;
				groundX += sprintBonus * horizontal_dir;
				}

			}
			else //Other movement cases
			{
				//Some bad collision code that isn't working
				/*
				var yWontCollide = true;
				var xChange = horRunSpeed * horizontal_dir - (verRunSpeed * vertical_dir);
				var yChange = verRunSpeed * vertical_dir;  
				with(collisionTracker)
				{
					yWontCollide = place_free(x, y + yChange)
				}*/
					groundX += horRunSpeed * horizontal_dir;
					groundX -= verRunSpeed * vertical_dir;
					//if(yWontCollide)
					//{
					groundY += verRunSpeed * vertical_dir;
					//}
					if(sprint)
					{
					var sprintBonus = verRunSpeed * (sprintMultiplier - 1)
					groundY +=  sprintBonus * vertical_dir;
					groundX +=  sprintBonus * horizontal_dir;
					groundX -= sprintBonus * vertical_dir;
					}
				//}
			}
}

function jumpMovement(){
			//Jumping Mechanics
			if(space && grounded && jumpDelayCounter == 0)
			{
				grounded = false;
				jumpVelocity = jumpPower;
				jumpDelayCounter = jumpDelay*fps; 
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
	
			if(jumpDelayCounter > 0)
			{
			jumpDelayCounter--; //Decrement
			}
}