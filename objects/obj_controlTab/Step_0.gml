/// @description Insert description here
// You can write your code in this editor
event_inherited();
controllerPress = gamepad_button_check_pressed(0, gp_face3);
if (controllerPress = true)
	{
		room_goto(rm_controls);
		audio_play_sound(snd_screeenChange ,5, false);
	}





