/// @description Insert description here
// You can write your code in this editor
if(HP <= 0)
{
	dead = true;
}

if(hasAttackObject)
{
	instance_destroy(attack);
	hasAttackObject = false;
}

if(dead)
{
	scr_dead();
}


