// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CutsceneEndMusic(){
	
	with (objMusicPlayer) {
		end_song = true;
	}
	with (objGame) {
			cutscene_music_playing = false;	
	}
	CutsceneEndAction();
}