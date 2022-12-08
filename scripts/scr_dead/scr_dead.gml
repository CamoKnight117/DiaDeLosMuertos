// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dead(){
	if(sprite_index != deadSprite)
	sprite_index = hitSprite;
	if(deathCounter > deathDisplayLength1)
	{
		sprite_index = deadSprite;
		
		if(deathCounter > deathDisplayLength2)
		{
			instance_destroy();
		}
	}
	deathCounter++;
}