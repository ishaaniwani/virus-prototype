// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CutscenePlayMusic(music, priority, loop){
	
	var music_playing;
	
	with (objGame) {
		music_playing = cutscene_music_playing;	
	}
	
	if (!music_playing) {
		var inst;
		if (!instance_exists(objMusicPlayer)) {
			inst = instance_create_layer(0, 0, "Instances", objMusicPlayer);
			with (inst) {
				music_track = music;
				m_priority = priority;
				loopable = loop;
				event_perform(ev_other, ev_user0);
			}
		}
		with (objGame) {
			cutscene_music_playing = true;	
		}
	}
	CutsceneEndAction();
}