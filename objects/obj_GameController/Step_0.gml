zombieCreationCounter++;

if(instance_exists(obj_character) == false)
{
	scr_gameOver();
}

if(instance_exists(obj_enemy) == false || zombieCreationCounter >= zombieCreationThreshold)
{
	zombieCreationCounter = 0;
	
	zombieX = random_range(zombieXLowBound, zombieXHighBound);
	zombieY = random_range(zombieYLowBound, zombieYHighBound);
	
	while(zombieX > xLowBound && zombieX < xHighBound)
	{
		zombieX = random_range(zombieXLowBound, zombieXHighBound);
	}
	
		while(zombieY > yLowBound && zombieY < yHighBound)
	{
		zombieY = random_range(zombieYLowBound, zombieYHighBound);
	}	
	
	zombie = instance_create_depth(zombieX,zombieY,0,obj_enemy);
	zombie.following = true;
}


