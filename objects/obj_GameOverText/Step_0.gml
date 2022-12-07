//fade in and out
image_alpha += 0.01;

if (image_alpha = 1)
{
	do
	{
		image_alpha -= 0.01;
	}
	until image_alpha = 0;
}

controllerPress = gamepad_button_check_pressed(0, gp_face1);
if (controllerPress = true)
	{
		room_goto_next();
		audio_play_sound(snd_screeenChange ,5, false);
	}
