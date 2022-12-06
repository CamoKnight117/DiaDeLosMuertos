//fade in and out
event_inherited();
image_alpha += 0.01;

if (image_alpha = 1)
{
	do
	{
		image_alpha -= 0.01;
	}
	until image_alpha = 0;
}
