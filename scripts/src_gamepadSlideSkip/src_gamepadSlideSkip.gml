// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function src_gamepadSlideSkip(){
controllerInput = gamepad_button_check_pressed(0, gp_face1);

if (controllerInput = true)
{
room_goto_next();	
}

}