event_inherited();
controllerPress = gamepad_button_check_pressed(0, gp_face1);
if (controllerPress = true)
	{
		room_goto_next();
		audio_play_sound(snd_screeenChange ,5, false);
	}
image_alpha = 1;
