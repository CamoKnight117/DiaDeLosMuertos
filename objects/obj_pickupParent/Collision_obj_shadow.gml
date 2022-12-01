/// @description Insert description here
// You can write your code in this editor
if(aliveCounter > 10)
{
	if(other.objectToFollow.object_index == obj_character)
	{
	
	if(pickupNumber == 1)
	{
		global.pickupOne = true;
	}
	if(pickupNumber == 2)
	{
		global.pickupTwo = true;
	}
	if(pickupNumber == 3)
	{
		global.pickupThree = true;
	}
	instance_destroy();
	audio_play_sound(snd_pickupitem, 5, false);
	}
}


