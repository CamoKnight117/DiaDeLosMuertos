/// @description Insert description here
// You can write your code in this editor

if(((depth - other.depth) < depthDifToDamage) 
&& Owner != other && other.isHit == false)
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
	
	audio_play_sound(snd_zombie,4,false);
	audio_play_sound(snd_bottleBreak, 5, false);
	instance_destroy();
}



