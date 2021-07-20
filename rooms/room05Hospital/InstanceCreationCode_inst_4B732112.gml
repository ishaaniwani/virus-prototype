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

doctor_text = ["Crouton, I just noticed you. We need to start the procedure, now.", "This virus has the potential of taking over the world."]
doctor_speakers = [objMainDoctor.id, objMainDoctor.id];
doctor_next_line = [0, -1];
doctor_scripts = [-1];

nurse_text = ["The patient's condition is worsening."];
nurse_speakers = [objNurse.id];
nurse_next_line = [-1];
nurse_scripts = [-1];

crouton_text = ["Ok, I'll get in there, anything else I need to know?"];
crouton_speakers = [objCrouton.id];
crouton_next_line = [-1];
crouton_scripts = [-1];

bodyguard_text = ["Yes, just one thing. I'll be radioing in with y'all to help."];
bodyguard_speakers = [objBodyguard.id];
bodyguard_next_line = [-1];
bodyguard_scripts = [-1];

t_scene_info = [
	[CutsceneFreezePlayer, true],
	
	[CutsceneWait, 1],
	
	[CutscenePlayMusic, musHospitalScene, 10, true],
	
	[CutsceneWait, 3],
	
	[CutsceneMoveCameraToObject, objNurse, 0.05],
	
	[CreateTextbox, nurse_text, nurse_speakers, nurse_next_line, nurse_scripts],
	
	[CutsceneMoveCameraToObject, objMainDoctor, 0.05],
	
	[CreateTextbox, doctor_text, doctor_speakers, doctor_next_line, doctor_scripts],
	
	[CutsceneMoveCameraToObject, objCrouton, 0.05],
	
	[CreateTextbox, crouton_text, crouton_speakers, crouton_next_line, crouton_scripts],
	
	[CutsceneMoveCameraToObject, objBodyguard, 0.05],

	[CreateTextbox, bodyguard_text, bodyguard_speakers, bodyguard_next_line, bodyguard_scripts],
	
	[CutsceneMoveCameraToObject, objCrouton, 0.05],

	[CutsceneWait, 0.5],
	
	[CutsceneMoveCameraToObject, objCrouton, 1],

	[CutsceneFreezePlayer, false],
];

with (objGame) {
	hospitalCutscenePlayed = true;
}