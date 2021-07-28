var cutscene_already_played = false;

with (objGame) {
	cutscene_already_played = hospitalCutscenePlayed;	
}

if (cutscene_already_played) {
	instance_destroy();
	exit;
}

dialogue_text1 = ["Dr. Martinez, the patients vitals are steadily decreasing, we have to do it now."];
dialogue_speakers1 = [objNurse.id];
dialogue_next_line1 = [-1];
dialogue_scripts1 = [-1];

dialogue_text2 = ["Oh Dear."];
dialogue_speakers2 = [objMainDoctor.id];
dialogue_next_line2 = [-1];
dialogue_scripts2 = [-1];

dialogue_text3 = ["Oh, Crouton! I want to say that I'm happy to see you again, but our worst fears have become a reality."];
dialogue_speakers3 = [objMainDoctor.id];
dialogue_next_line3 = [0];
dialogue_scripts3 = [-1];

dialogue_text4 = ["Proto has infected humans."];
dialogue_speakers4 = [objNurse.id];
dialogue_next_line4 = [-1];
dialogue_scripts4 = [-1];

dialogue_text5 = ["I read the file. He's a worker at the animal farm. Was anyone else infected?"];
dialogue_speakers5 = [objCrouton.id];
dialogue_next_line5 = [-1];
dialogue_scripts5 = [-1];

dialogue_text6 = ["We...do not know. In fact, we do not know anything about what this virus is or how to treat it.",
				  "Crouton, we need to use Manual Immune Support."];
dialogue_speakers6 = [objMainDoctor.id, objMainDoctor.id, objMainDoctor.id, objMainDoctor.id];
dialogue_next_line6 = [0, -1];
dialogue_scripts6 = [-1, -1];

dialogue_text7 = ["What? The federal government gave us clearance?"];
dialogue_speakers7 = [objCrouton.id];
dialogue_next_line7 = [-1];
dialogue_scripts7 = [-1];

dialogue_text8 = ["Hi \"Crouton,\" nice to meet ya.",
				"Us feds have been watching this closely ever since the animal virus got out of hand",
				"The virus has the potential to cause a pandemic.",
				"The legal documents are signed, you are cleared to operate."];
dialogue_speakers8 = [objBodyguard.id, objBodyguard.id, objBodyguard.id, objBodyguard.id];
dialogue_next_line8 = [0, 0, 0, -1];
dialogue_scripts8 = [-1, -1, -1, -1];

dialogue_text9 = ["Oh...I dunno. I haven't done MIS in a long time, and not only that it's very dangerous..."];
dialogue_speakers9 = [objCrouton.id];
dialogue_next_line9 = [-1];
dialogue_scripts9 = [-1];

dialogue_text10 = ["Crouton! This is your duty as an Anatomynaut! Understand what's at stake here!",
			   "If we don't stop this virus now the number of people that could die-"];
dialogue_speakers10 = [objNurse.id, objNurse.id];
dialogue_next_line10 = [0, -1];
dialogue_scripts10 = [-1, -1];


// Music Change

dialogue_text11 = ["Crouton, I know it is a lot to ask from you. When you feel ready, board the MIS bus."];
dialogue_speakers11 = [objMainDoctor.id];
dialogue_next_line11 = [0];
dialogue_scripts11 = [-1];

dialogue_text12 = ["Your crewmates are already waiting.",
					"Just walk through the doors when you're ready. I believe in you Crouton!"];
dialogue_speakers12 = [objNurse.id,  objNurse.id, objNurse.id];
dialogue_next_line12 = [0, 0, -1];
dialogue_scripts12 = [-1, -1, -1];

dialogue_text13 = ["And you got help too. We'll be radioing with y'all to provide support."];
dialogue_speakers13 = [objBodyguard.id];
dialogue_next_line13 = [-1];
dialogue_scripts13 = [-1];

dialogue_text14 = ["[I did sign up for this. Damn it!] Okay, I'll board the bus."];
dialogue_speakers14 = [objCrouton.id];
dialogue_next_line14 = [-1];
dialogue_scripts14 = [-1];

t_scene_info = [
	[CutsceneFreezePlayer, true],
	
	[CutsceneWait, 1],
	
	[CutscenePlayMusic, musHospitalScene, 10, true],
	
	[CutsceneWait, 2],
	
	[CreateTextbox, dialogue_text1, dialogue_speakers1, dialogue_next_line1, dialogue_scripts1],	
	[CreateTextbox, dialogue_text2, dialogue_speakers2, dialogue_next_line2, dialogue_scripts2],
	
	[CutsceneWait, 0.5],
	
	[CutsceneChangeVariable, objMainDoctor, "flip", true],
	
	[CutsceneWait, 0.5],
	
	[CreateTextbox, dialogue_text3, dialogue_speakers3, dialogue_next_line3, dialogue_scripts3],
	[CreateTextbox, dialogue_text4, dialogue_speakers4, dialogue_next_line4, dialogue_scripts4],
	[CreateTextbox, dialogue_text5, dialogue_speakers5, dialogue_next_line5, dialogue_scripts5],
	[CreateTextbox, dialogue_text6, dialogue_speakers6, dialogue_next_line6, dialogue_scripts6],
	[CreateTextbox, dialogue_text7, dialogue_speakers7, dialogue_next_line7, dialogue_scripts7],
	[CreateTextbox, dialogue_text8, dialogue_speakers8, dialogue_next_line8, dialogue_scripts8],
	[CreateTextbox, dialogue_text9, dialogue_speakers9, dialogue_next_line9, dialogue_scripts9],
	[CreateTextbox, dialogue_text10, dialogue_speakers10, dialogue_next_line10, dialogue_scripts10],
	[CutsceneEndMusic],
	
	[CutsceneWait, 1],
	
	[CutscenePlayMusic, musBusScene, 11, false],
	[CutsceneMoveCameraToObject, objBus, 0.01],
	[CreateTextbox, dialogue_text11, dialogue_speakers11, dialogue_next_line11, dialogue_scripts11],
	[CreateTextbox, dialogue_text12, dialogue_speakers12, dialogue_next_line12, dialogue_scripts12],
	[CreateTextbox, dialogue_text13, dialogue_speakers13, dialogue_next_line13, dialogue_scripts13],
	
	[CutsceneMoveCameraToObject, objCrouton, 0.05],
	
	[CutsceneWait, 4],
	
	[CreateTextbox, dialogue_text14, dialogue_speakers14, dialogue_next_line14, dialogue_scripts14],
	[CutsceneEndMusic],
	[CutsceneMoveCameraToObject, objCrouton, 1],
	[CutsceneFreezePlayer, false],
];

with (objGame) {
	hospitalCutscenePlayed = true;
}