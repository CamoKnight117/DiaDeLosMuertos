/// @description Insert description here
// You can write your code in this editor

if(pickupNumber == 1)
{
	newPickup = instance_create_layer(x,y,layer_get_id("Instances"),obj_pickupParent);
	newPickup.pickupNumber = 1;
	newPickup.sprite_index = spr_artifactFlower;
}
if(pickupNumber == 2)
{
	newPickup = instance_create_layer(x,y,layer_get_id("Instances"),obj_pickupParent);
	newPickup.pickupNumber = 2;
	newPickup.sprite_index = spr_artifactBread;
	newPickup.image_xscale = 0.75;
	newPickup.image_yscale = 0.75;
}
if(pickupNumber == 3)
{
	newPickup = instance_create_layer(x,y,layer_get_id("Instances"),obj_pickupParent);
	newPickup.pickupNumber = 3;
	newPickup.sprite_index = spr_artifactGrandma;
}

instance_destroy(self);
audio_play_sound(snd_potbreak, 5, false)
