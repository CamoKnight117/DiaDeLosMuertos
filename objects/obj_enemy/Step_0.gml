if(isHit)
{
	sprite_index = spr_enemyHit;
	if(stunCounter > 0)
	{
		stunCounter--;
		if(stunCounter == 0)
		{
			itHit = false;
		}
	}
}

depth = -1*groundY;

scr_animate();
scr_enemyInput();
scr_movement();
