if(((depth - other.depth) < depthDifToDamage) 
&& Owner != other && other.isHit == false
&& !object_is_ancestor(other.object_index, obj_enemy))
{
	other.isHit = true;
	other.stunCounter = stunLength;
	other.HP -= damage;
	other.knockbackVelocity = knockbackPower;
	if(Owner.x < other.x)
	{
		other.hitOrigin = -1;
	}
	else
	{
		other.hitOrigin = 1;
	}
	audio_play_sound(snd_bottleBreak, 5, false);
	instance_destroy();
	
}



