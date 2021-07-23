if (!end_song) {
	exit;	
}

if(audio_sound_get_gain(music_track) - 0.1 >= 0){
    audio_sound_gain(music_track, audio_sound_get_gain(music_track) - 0.1, 0);
    alarm[0] = 1;
} else {
    audio_stop_sound(music_track);
	end_song = false; // cuz the tracks ended.
	instance_destroy();
}

