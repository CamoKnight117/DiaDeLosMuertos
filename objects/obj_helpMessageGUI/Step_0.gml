/// @description Insert description here
// You can write your code in this editor
displayCounter++;
if(displayCounter > displayLength1)
{
	sprite_index = sprite2;
	if(displayCounter > displayLength1 + displayLength2)
	{
		instance_destroy();
	}
}
else
{
	sprite_index = sprite1;
}




