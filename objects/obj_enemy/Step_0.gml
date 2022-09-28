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
else
{
	sprite_index = spr_enemy;
}

depth = -1*groundY;
