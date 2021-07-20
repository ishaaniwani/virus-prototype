var cutscene_already_played = false;

with (objGame) {
	cutscene_already_played = hospitalCutscenePlayed;	
}

if (cutscene_already_played) {
	instance_destroy();
	exit;
}

var nurse_id;
var doctor_id;

with (objNurse) {
	nurse_id = id;
}
with (objMainDoctor) {
	doctor_id = id;	
}


doctor_text = ["Crouton, I just noticed you. We need to start the procedure, now.", "This virus has the potential of taking over the world."]
doctor_speakers = [doctor_id, doctor_id];
doctor_next_line = [0, -1];
doctor_scripts = [-1];

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
	
	[CreateTextbox, doctor_text, doctor_speakers, doctor_next_line, doctor_scripts],
	
	[CutsceneMoveCameraToObject, objMainDoctor],
	
	[CutsceneWait, 5],
	
	[CutsceneFreezePlayer, false],
];

with (objGame) {
	hospitalCutscenePlayed = true;
}