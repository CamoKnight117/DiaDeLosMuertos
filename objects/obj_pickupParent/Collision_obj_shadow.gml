/// @description Insert description here
// You can write your code in this editor
if(aliveCounter > 10)
{
	var destroyIt = true;
	if(other.objectToFollow.object_index == obj_character)
	{
	
	if(pickupNumber == 0 && !global.holdingTequila)
	{
		global.holdingTequila = true;
	}
	else if(pickupNumber == 0)
	{
		destroyIt = false;
	}
	
	if(pickupNumber == 1)
	{
		global.pickupOne = true;
	}
	else if(pickupNumber == 2)
	{
		global.pickupTwo = true;
	}
	else if(pickupNumber == 3)
	{
		global.pickupThree = true;
	}
	
	if(destroyIt)
	{
	instance_destroy();
	audio_play_sound(snd_pickupitem, 5, false);
	}
	}
}


