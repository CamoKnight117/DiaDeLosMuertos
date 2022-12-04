// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_laCatrinaInput(){
function scr_enemyInput(){
	space = 0;
	left = 0;
	right = 0;
	up = 0;
	down = 0;
	basicAttack = false;
	inputLagCounter--;
	
	if(isHit) 
	{
		
	}
	
	if(isAttacking == false && attackCountdown > 0)
	{
	attackCountdown--;
	}
	
	var basicAttackDistance = 30;
	var basicAttackVertDist = 35;
	
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
		
		
		if(x - playerX > 20 || x - playerX < -20 || y - playerY> 20 || y - playerY < -20)
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

		}
		else
		{
			following = false;
			followCount = 0;
		}
		
					
		if(abs(x - playerX) < basicAttackDistance && 
		abs(y - playerY) < basicAttackVertDist && attackCountdown <= 0)
			{
				basicAttack = true;
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
}