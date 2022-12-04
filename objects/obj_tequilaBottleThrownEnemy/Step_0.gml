/// @description Insert description here
// You can write your code in this editor
animationCounter++;
yVel += yGrav;

if(animationCounter > animationThreshold)
{
	animationCounter = 0;
	if(image_index == image_number - 1)
	{
		image_index = 0;
	}
	else
	{
		image_index++;
	}
}

x += xVel * horizontal_dir;
y += yVel;
height -= yVel;

if(height <= 0)
{
	audio_play_sound(snd_potbreak, 5, false);
	instance_destroy();
}




