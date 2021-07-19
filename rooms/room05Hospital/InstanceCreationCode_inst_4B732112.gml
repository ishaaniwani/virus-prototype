var cutscene_already_played = false;

with (objGame) {
	cutscene_already_played = hospitalCutscenePlayed;	
}

if (cutscene_already_played) {
	instance_destroy();
	exit;
}

var nurse_id;

with (objNurse) {
	nurse_id = id;
}

nurse_text = ["The patient's condition is worsening."];
nurse_speakers = [nurse_id];
nurse_next_line = [-1];
nurse_scripts = [-1];

t_scene_info = [
	[CutsceneFreezePlayer, true],
	
	[CutsceneWait, 1],
	
	[CutscenePlayMusic, musHospitalScene, 10, true],
	
	[CutsceneWait, 3],
	
	[CreateTextbox, nurse_text, nurse_speakers, nurse_next_line, nurse_scripts],
	
	[CutsceneFreezePlayer, false],
];

with (objGame) {
	hospitalCutscenePlayed = true;
}