function scr_enemyInput(){

	//This script changes the enemy behavior
	//Movement
	left =  keyboard_check(vk_left)
	right = keyboard_check(vk_right)
	up =  keyboard_check(vk_up)
	down = keyboard_check(vk_down)
	
	sprint = keyboard_check(vk_shift);

	space = 0//keyboard_check(vk_space)


	//Utility
	if keyboard_check_pressed(vk_escape) game_end();
	if keyboard_check_pressed(ord("R")) game_restart();

}