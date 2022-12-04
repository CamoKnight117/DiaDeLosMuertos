/// @description Insert description here
// You can write your code in this editor

if(pickupNumber == 0)
{
	if(global.holdingTequila)
	{
		sprite_index = spr_tequilaBottle;
		image_alpha = 1;
	}
	else
	{
		sprite_index = spr_tequilaBottle;
		image_alpha = 0.5;
	}
}
else if(pickupNumber == 1)
{
	if(global.pickupOne)
	{
		sprite_index = spr_artifactFlower;
		image_alpha = 1;
	}
	else
	{
		sprite_index = spr_artifactFlower;
		image_alpha = min(0.5, abs(sin(imageAlphaVar)));
	}
}
else if(pickupNumber == 2)
{
	if(global.pickupTwo)
	{
		sprite_index = spr_artifactBread;
		image_alpha = 1;
	}
	else
	{
		sprite_index = spr_artifactBread;

		image_alpha = min(0.5, abs(sin(imageAlphaVar)));
	}
}
else if(pickupNumber == 3)
{
	if(global.pickupThree)
	{
		sprite_index = spr_artifactGrandma;
		image_alpha = 1;
	}
	else
	{
		sprite_index = spr_artifactGrandma;

		image_alpha = min(0.5, abs(sin(imageAlphaVar)));
	}
}

if(pickupNumber != 0)
		imageAlphaVar += 0.025;


