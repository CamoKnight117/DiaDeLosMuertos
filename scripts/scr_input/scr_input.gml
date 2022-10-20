//This script handles all player input, assigning it to the proper variables
function scr_input() {
	//Movement
	left =  keyboard_check(vk_left) or keyboard_check(ord("A"));
	right = keyboard_check(vk_right) or keyboard_check(ord("D"));
	up =  keyboard_check(vk_up) or keyboard_check(ord("W"));
	down = keyboard_check(vk_down) or keyboard_check(ord("S"));
	
	sprint = keyboard_check(vk_shift);

	space = keyboard_check(vk_space)

	basicAttack = keyboard_check(ord("."));
	

	//Utility
	if keyboard_check_pressed(vk_escape) game_end();
	if keyboard_check_pressed(ord("R")) game_restart();
}
