zombieCreationCounter++;

if(instance_exists(obj_character) == false)
{
	scr_gameOver();
}

if((instance_exists(obj_enemy) == false || zombieCreationCounter >= zombieCreationThreshold) 
&& (room == room0 || room == room1 || room == room2))
{
	zombieCreationCounter = 0;
	
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

if((global.pickupOne && room == room0) 
|| (global.pickupTwo && room == room1) 
|| (global.pickupThree && room == room2))
{
	arrowOne.visible = true;
	arrowTwo.visible = true;
	arrowThree.visible = true;
	rightWall.active = true;
}
