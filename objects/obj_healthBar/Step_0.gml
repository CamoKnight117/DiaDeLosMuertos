
if(instance_exists(obj_character))
{
	image_xscale = obj_character.HP/obj_character.max_HP;
	if(obj_character.HP == 0)
	{
		instance_destroy(rightCap);
		instance_destroy(leftCap);
		instance_destroy();
	}
	else
	{
		rightCap.x = x + sprite_width;
		rightCap.y = y;
	}
}


