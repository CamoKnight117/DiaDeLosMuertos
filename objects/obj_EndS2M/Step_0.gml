/// @description Insert description here
// You can write your code in this editor
event_inherited();
if keyboard_check_pressed(vk_escape) game_end();
controllerPress = gamepad_button_check_pressed(0, gp_face1);
if (controllerPress = true)
	{
		room_goto_next();
		audio_play_sound(snd_screeenChange ,5, false);
	}





