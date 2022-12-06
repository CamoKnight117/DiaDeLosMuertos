zombieCreationCounter++;

if(room == room1 || room == room2)
{
laCatrinaCreationCounter++

	if(laCatrinaCreationCounter >= laCatrinaCreationThreshold)
	{
		laCatrinaCreationCounter = 0;
		
		if(room == z && laCatrinaCreationThreshold > 1)
		{
			laCatrinaCreationThreshold--;
		}
		
		var genMode = irandom_range(1,3);
	
		switch(genMode)
		{
			case 1:
				zombieX = irandom_range(zombieXLowBound1, zombieXHighBound1);
				zombieY = irandom_range(zombieYLowBound1, zombieYHighBound1);
				break;
			case 2:
				zombieX = irandom_range(zombieXLowBound2, zombieXHighBound2);
				zombieY = irandom_range(zombieYLowBound2, zombieYHighBound2);
				break;
			case 3:
				zombieX = irandom_range(zombieXLowBound3, zombieXHighBound3);
				zombieY = irandom_range(zombieYLowBound3, zombieYHighBound3);
			break;
		}	
	
		zombie = instance_create_depth(zombieX,zombieY,0,obj_laCatrinaZombie);
		zombie.following = true;
	}

}

if(instance_exists(obj_character) == false)
{
	scr_gameOver();
}

if(global.gameCompleted)
{
	if (room != z && keyboard_check(ord("Z")) && keyboard_check_direct(vk_lshift) && keyboard_check_direct(vk_lcontrol))
	{
		room = z;
	}
}

if((instance_exists(obj_enemy) == false || zombieCreationCounter >= zombieCreationThreshold) 
&& (room == room0 || room == room1 || room == room2 || room == z))
{
	zombieCreationCounter = 0;
	
	if(room == z && zombieCreationThreshold > 1)
	{
			zombieCreationThreshold--;
	}
	
	var genMode = irandom_range(1,3);
	
	switch(genMode)
	{
		case 1:
			zombieX = irandom_range(zombieXLowBound1, zombieXHighBound1);
			zombieY = irandom_range(zombieYLowBound1, zombieYHighBound1);
			break;
		case 2:
			zombieX = irandom_range(zombieXLowBound2, zombieXHighBound2);
			zombieY = irandom_range(zombieYLowBound2, zombieYHighBound2);
			break;
		case 3:
			zombieX = irandom_range(zombieXLowBound3, zombieXHighBound3);
			zombieY = irandom_range(zombieYLowBound3, zombieYHighBound3);
		break;
	}	
	
	zombie = instance_create_depth(zombieX,zombieY,0,obj_mariachiZombie);
	zombie.following = true;
}

if(room == z)
{	
	var tempYLow = yLowBound;
	var tempYHigh = yHighBound;
	yLowBound = 0;
	yHighBound = 384;
	randX = random_range(xLowBound, xHighBound);
	randY = random_range(yLowBound, yHighBound);
	part_particles_create(particles, randX, randY, partTypeConfetti, 3);
	randX = random_range(xLowBound, xHighBound);
	randY = random_range(yLowBound, yHighBound);
	part_particles_create(particles, randX, randY, partTypeConfetti, 3);
	randX = random_range(xLowBound, xHighBound);
	randY = random_range(yLowBound, yHighBound);
	part_particles_create(particles, randX, randY, partTypeConfetti, 3);
	yLowBound = tempYLow;
	yHighBound = tempYHigh;
}

if((global.pickupOne && room == room0) 
|| (global.pickupTwo && room == room1) 
|| (global.pickupThree && room == room2))
{
	arrowOne.visible = true;
	arrowTwo.visible = true;
	arrowThree.visible = true;
	rightWall.active = true;
}

	if keyboard_check_pressed(vk_escape) game_end();
