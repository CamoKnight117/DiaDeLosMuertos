/// @description Insert description here
// You can write your code in this editor
if(animationCounter > animationThreshold)
{
	animationCounter = 0;
	if(image_index == image_number - 1)
	{
		
		instance_destroy();
	}
	else
	{
		image_index++;
	}
}
animationCounter++;

