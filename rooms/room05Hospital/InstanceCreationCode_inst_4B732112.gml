var cutscene_already_played = false;

with (objGame) {
	cutscene_already_played = hospitalCutscenePlayed;	
}

if (cutscene_already_played) {
	instance_destroy();
	exit;
}


t_scene_info = [
	[CutsceneFreezePlayer, true],
	
	[CutsceneWait, 3],
	
	[CutscenePlayMusic, musHospitalScene, 10, false],
	[CutsceneFreezePlayer, false],
];

with (objGame) {
	hospitalCutscenePlayed = true;
}