var cutscene_already_played = false;

with (objGame) {
	cutscene_already_played = hospitalCutscenePlayed;	
}

if (cutscene_already_played) {
	instance_destroy();
	exit;
}

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

doctor_text2 = ["Alright Crouton whenever you're ready, just get in the bus.", 
				["* I'll get in there.", "* Actually give me a moment"],
				"Okay, best of luck!",
				"Alright, just talk to me once you're ready."];
doctor_speakers2 = [objMainDoctor.id, objCrouton.id, objMainDoctor.id, objMainDoctor.id];
doctor_next_line2 = [0, [2, 3], -1, -1];
doctor_scripts2 = [-1, [-1, -1], -1, -1];

t_scene_info = [
	[CutsceneFreezePlayer, true],
	
	[CutsceneWait, 1],
	
	[CutscenePlayMusic, musHospitalScene, 10, true],
	
	[CutsceneWait, 3],
	
	[CreateTextbox, nurse_text, nurse_speakers, nurse_next_line, nurse_scripts],
	[CreateTextbox, doctor_text, doctor_speakers, doctor_next_line, doctor_scripts],
	[CreateTextbox, crouton_text, crouton_speakers, crouton_next_line, crouton_scripts],
	[CreateTextbox, bodyguard_text, bodyguard_speakers, bodyguard_next_line, bodyguard_scripts],
	[CutsceneMoveCameraToObject, objBus, 0.05],

	[CutsceneWait, 3],
	
	[CreateTextbox, doctor_text2, doctor_speakers2, doctor_next_line2, doctor_scripts2],
	[CutsceneMoveCameraToObject, objCrouton, 0.05],
	
	[CutsceneWait, 3],
	
	[CutsceneMoveCameraToObject, objCrouton, 1],
	[CutsceneFreezePlayer, false],
];

with (objGame) {
	hospitalCutscenePlayed = true;
}