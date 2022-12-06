  //This script handles all player input, assigning it to the proper variables
function scr_input() {
	//Movement
	left =  keyboard_check(vk_left) or keyboard_check(ord("A")) or (gamepad_axis_value(0, gp_axislh) < 0);
	right = keyboard_check(vk_right) or keyboard_check(ord("D")) or (gamepad_axis_value(0, gp_axislh) > 0);
	
	up =  keyboard_check(vk_up) or keyboard_check(ord("W")) or (gamepad_axis_value(0, gp_axislv) < 0);
	down = keyboard_check(vk_down) or keyboard_check(ord("S")) or (gamepad_axis_value(0, gp_axislv) > 0);;
	
	sprint = keyboard_check(vk_shift) or gamepad_button_check(0, gp_shoulderlb);

	space = keyboard_check(vk_space) or gamepad_button_check_pressed(0, gp_face1);

	basicAttack = keyboard_check_pressed(ord("J")) or gamepad_button_check_pressed(0, gp_face3);
	throwAttack = keyboard_check_pressed(ord("K")) or gamepad_button_check_pressed(0, gp_face3);
	

	//Utility
	if keyboard_check_pressed(vk_escape) game_end();
}
