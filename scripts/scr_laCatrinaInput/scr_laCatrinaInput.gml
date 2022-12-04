// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_laCatrinaInput(){
	space = 0;
	left = 0;
	right = 0;
	up = 0;
	down = 0;
	throwAttack = false;
	basicAttack = false;
	inputLagCounter--;
	
	//Check if la Catrina is on screen...
	if(x > global.walkBorderLeft
	&& x < global.walkBorderRight
	&& y > global.walkBorderTop
	&& y < global.walkBorderBottom)
	{
		isOnScreen = true;
	}
	else
	{
		isOnScreen = false;
	}
	
	
	if(isHit) 
	{
		
	}
	
	if(isThrowAttacking == false && attackCountdown > 0)
	{
	attackCountdown--;
	}
	
	var basicAttackDistance = 270;
	var basicAttackVertDist = 35;
	var runAwayDist = 125;
	var runToDist = 200;
	var distFromBorder = 30;
	
	if(awake == false)
	{
		if(distance_to_object(obj_character) < followDistance)
		{
			awake = true;
		}
	}
	

	if(awake && instance_exists(obj_character))
	{
		playerX = obj_character.groundX;
		playerY = obj_character.groundY;
		
		if(abs(x-playerX) < runAwayDist && isOnScreen) //Player too close and we're not at the border, run away
		{
				//Check if la Catrina far enough within the border
			if(abs(x - global.walkBorderLeft) > distFromBorder
			&& abs(x - global.walkBorderRight) > distFromBorder)
			{
				runningAway = true;
			}
		}
		
		//If we're too close to the border, or far enough away from the player, stop running away
		if((abs(x - global.walkBorderLeft) < distFromBorder
			&& abs(x - global.walkBorderRight) < distFromBorder
			&& abs(y - global.walkBorderTop) < distFromBorder
			&& abs(y - global.walkBorderBottom) < distFromBorder)) 
			|| (abs(x-playerX) > runToDist) || !isOnScreen
			{
				runningAway = false;
			}
		
		//Move toward the player if we're not running away and they're out of range
		if((x - playerX > basicAttackDistance - 10 || x - playerX < -1 * basicAttackDistance + 10
		|| y - playerY> basicAttackVertDist - 10 || y - playerY < -1 * basicAttackVertDist + 10)
		&& runningAway == false)
		{
			if(following)
			{
				if(inputLagCounter <= 0)
				{
					inputLagCounter = inputLag;
					if(x - playerX > 20)
					{
						left = 1;
						right = 0;
					}
					else if(x - playerX < -20)
					{
						left = 0;
						right = 1;
					}
		
					if(y - playerY> 20)
					{
						up = 1;
						down = 0;
					}
					else if(y- playerY< -20)
					{
						up = 0;
						down = 1;
					}
				}
				else
				{
					left = prevLeft;
					right = prevRight;
					up = prevUp;
					down = prevDown;
				}
			}
			else
			{
				followCounter--;
				if(followCounter < 0)
				{
					following = true;
					followCounter = followLag/4 + random(followLag*1.5);
				}				
			}
		} //Run away from the player if we're too close
		else if(runningAway)
		{
			if(following)
			{
				if(inputLagCounter <= 0)
				{
					inputLagCounter = inputLag;
					if(x - playerX < 0)
					{
						left = 1;
						right = 0;
					}
					else if(x - playerX > 0)
					{
						left = 0;
						right = 1;
					}
				}
				else
				{
					left = prevLeft;
					right = prevRight;
					up = prevUp;
					down = prevDown;
				}
			}
			else
			{
				followCounter--;
				if(followCounter < 0)
				{
					following = true;
					followCounter = followLag/4 + random(followLag*1.5);
				}				
			}
		}
		//If we're not running away, and within throwing range, face the player
		else if(sign(x - playerX) == sign(image_xscale))
		{
			if(x - playerX > 10)
				{
				left = 1;
				right = 0;
			}
		else if(x - playerX < -10)
			{
				left = 0;
				right = 1;
			}
		}
		else
		{
			following = false;
			followCount = 0;
		}
		
					
		if(abs(x - playerX) < basicAttackDistance && 
		abs(y - playerY) < basicAttackVertDist && attackCountdown <= 0
		&& -sign(x - playerX) == sign(image_xscale) && isOnScreen)
			{
				throwAttack = true;
				attackCountdown = attackDelay/4 + random(attackDelay*1.5);
			}
			
	}

	
	
	
	

	//Utility
	if keyboard_check_pressed(vk_escape) game_end();
	if keyboard_check_pressed(ord("R")) game_restart();


	//Remember what our movement is for the next time around
	prevUp = up;
	prevDown = down;
	prevLeft = left;
	prevRight = right;
}