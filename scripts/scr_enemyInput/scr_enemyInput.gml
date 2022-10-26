function scr_enemyInput(){
	space = 0;
	left = 0;
	right = 0;
	up = 0;
	down = 0;
	basicAttack = false;
	
	if(isAttacking == false && attackCountdown > 0)
	{
	attackCountdown--;
	}
	
	var basicAttackDistance = 20;
	var basicAttackVertDist = 35;
	
	if(awake == false)
	{
		if(distance_to_object(obj_character) < 200)
		{
			awake = true;
		}
	}

	if(awake)
	{
		playerX = obj_character.x;
		playerY = obj_character.y;
		
		if(x - playerX > 20 || x - playerX < -20 || y - playerY> 20 || y - playerY < -20)
		{
			if(following)
			{
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
				followCounter++;
				if(followCounter > followLag)
				{
					following = true;
					followCounter = 0;
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
				attackCountdown = attackDelay;
			}
	}

	
	
	
	

	//Utility
	if keyboard_check_pressed(vk_escape) game_end();
	if keyboard_check_pressed(ord("R")) game_restart();

}