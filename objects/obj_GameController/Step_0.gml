/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_character) == false)
{
	scr_gameOver();
}

if(instance_exists(obj_enemy) == false)
{
	instance_create_depth(0,300,0,obj_enemy);
}


