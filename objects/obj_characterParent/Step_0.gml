/// @description Insert description here
// You can write your code in this editor
if(HP <= 0)
{
	instance_destroy(self);
}

if(hasAttackObject)
{
	instance_destroy(attack);
	hasAttackObject = false;
}


