// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_gameOver(){
	room = rm_GameOver;
	audio_play_sound(snd_gameover, 5, false);
	
	if keyboard_check_pressed(vk_escape) game_end();
	if keyboard_check_pressed(ord("R")) game_restart();
}