// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CutscenePlayMusic(music, priority, loop){
	
	var music_playing;
	
	with (objGame) {
		music_playing = cutscene_music_playing;	
	}
	
	if (!music_playing) {
		audio_play_sound(music, priority, loop);
		with (objGame) {
			cutscene_music_playing = true;	
		}
	}
	CutsceneEndAction();
}