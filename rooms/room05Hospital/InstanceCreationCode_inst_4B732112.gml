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
dialogue_next_line3 = [-1];
dialogue_scripts3 = [-1];

dialogue_text4 = ["Proto has infected humans."];
dialogue_speakers4 = [objNurse.id];
dialogue_next_line4 = [-1];
dialogue_scripts4 = [-1];

dialogue_text5 = ["Yes, Protoporous01 has crossed over from animals and has infected the patient.",
				"I assume you already know the details of the infection?"];
dialogue_speakers5 = [objMainDoctor.id, objMainDoctor.id];
dialogue_next_line5 = [0, -1];
dialogue_scripts5 = [-1];

dialogue_text6 = ["Yup, he's a worker at the animal farm. Was anyone else infected?"];
dialogue_speakers6 = [objCrouton.id];
dialogue_next_line6 = [-1];
dialogue_scripts6 = [-1];

dialogue_text7 = ["We...do not know. In fact, we do not know anything, what we are up against,",
				  "how to treat this, anything.",
				  "We had to medically induce the patient into a coma. It should help, but at this rate,",
				  "it is likely that the patient will have cardiac arrest and potentially die."];
dialogue_speakers7 = [objMainDoctor.id, objMainDoctor.id, objMainDoctor.id, objMainDoctor.id];
dialogue_next_line7 = [0, 0, 0, -1];
dialogue_scripts7 = [-1, -1, -1, -1];

dialogue_text8 = ["Have you let the family know?"];
dialogue_speakers8 = [objCrouton.id];
dialogue_next_line8 = [-1];
dialogue_scripts8 = [-1];

dialogue_text9 = ["I'm...I'm about to. Crouton, we need MIS."];
dialogue_speakers9 = [objNurse.id];
dialogue_next_line9 = [-1];
dialogue_scripts9 = [-1];

dialogue_text10 = ["Uh...the federal government gave us clearance?"];
dialogue_speakers10 = [objCrouton.id];
dialogue_next_line10 = [-1];
dialogue_scripts10 = [-1];

dialogue_text11 = ["Hi \"Crouton,\" nice to meet ya.",
				"Us feds have been watching this closely ever since the animal virus got out of hand",
				"I've been talking with Mike, and it seems like there's no option.",
				"Manual Immune Support is a go.",
				"The legal documents are signed, you are cleared to operate."];
dialogue_speakers11 = [objBodyguard.id, objBodyguard.id, objBodyguard.id, objBodyguard.id, objBodyguard.id];
dialogue_next_line11 = [0, 0, 0, 0, -1];
dialogue_scripts11 = [-1, -1, -1, -1, -1];

dialogue_text12 = ["Thanks Bill. I hope we're all on the same page now.",
				"Crouton, we need you to save the patient and learn more info about the virus using MIS."];
dialogue_speakers12 = [objMainDoctor.id, objMainDoctor.id];
dialogue_next_line12 = [0, -1];
dialogue_scripts12 = [-1];

dialogue_text13 = ["Oh...I dunno Oscar. I haven't done MIS in a long time,",
					"and not only that it's very dangerous..."];
dialogue_speakers13 = [objCrouton.id, objCrouton.id];
dialogue_next_line13 = [-1];
dialogue_scripts13 = [-1];

dialogue_text14 = ["Crouton! This is your duty as an Anatomynaut! Understand what's at stake here!",
			   "If we don't stop this virus now the number of people that could die-"];
dialogue_speakers14 = [objNurse.id, objNurse.id];
dialogue_next_line14 = [0, -1];
dialogue_scripts14 = [-1, -1];

dialogue_text15 = ["Crouton, I know it is a lot to ask from you.",
					"When you feel ready, board the MIS bus."];
dialogue_speakers15 = [objMainDoctor.id, objMainDoctor.id];
dialogue_next_line15 = [0, -1];
dialogue_scripts15 = [-1];

dialogue_text16 = ["Your crewmates are already waiting.",
					"Just walk through the doors when you're ready.",
					"I believe in you Crouton!"];
dialogue_speakers16 = [objNurse.id,  objNurse.id, objNurse.id];
dialogue_next_line16 = [0, 0, -1];
dialogue_scripts16 = [-1, -1, -1];

dialogue_text17 = ["And you got help too. We'll be radioing with y'all to provide support."];
dialogue_speakers17 = [objBodyguard.id];
dialogue_next_line17 = [-1];
dialogue_scripts17 = [-1];

dialogue_text18 = ["[Y'all aren't putting your life on the line though. Bah... Shut up Crouton! You signed up for this.]"];
dialogue_speakers18 = [objCrouton.id];
dialogue_next_line18 = [-1];
dialogue_scripts18 = [-1];

dialogue_text19 = ["Okay, I'll board the bus."];
dialogue_speakers19 = [objCrouton.id];
dialogue_next_line19 = [-1];
dialogue_scripts19 = [-1];

t_scene_info = [
	[CutsceneFreezePlayer, true],
	
	[CutsceneWait, 1],
	
	[CutscenePlayMusic, musHospitalScene, 10, true],
	
	[CutsceneWait, 3],
	
	[CreateTextbox, dialogue_text1, dialogue_speakers1, dialogue_next_line1, dialogue_scripts1],
	[CreateTextbox, dialogue_text2, dialogue_speakers2, dialogue_next_line2, dialogue_scripts2],
	[CreateTextbox, dialogue_text3, dialogue_speakers3, dialogue_next_line3, dialogue_scripts3],
	[CreateTextbox, dialogue_text4, dialogue_speakers4, dialogue_next_line4, dialogue_scripts4],
	[CreateTextbox, dialogue_text5, dialogue_speakers5, dialogue_next_line5, dialogue_scripts5],
	[CreateTextbox, dialogue_text6, dialogue_speakers6, dialogue_next_line6, dialogue_scripts6],
	[CreateTextbox, dialogue_text7, dialogue_speakers7, dialogue_next_line7, dialogue_scripts7],
	[CreateTextbox, dialogue_text8, dialogue_speakers8, dialogue_next_line8, dialogue_scripts8],
	[CreateTextbox, dialogue_text9, dialogue_speakers9, dialogue_next_line9, dialogue_scripts9],
	[CreateTextbox, dialogue_text10, dialogue_speakers10, dialogue_next_line10, dialogue_scripts10],
	[CreateTextbox, dialogue_text11, dialogue_speakers11, dialogue_next_line11, dialogue_scripts11],
	[CreateTextbox, dialogue_text12, dialogue_speakers12, dialogue_next_line12, dialogue_scripts12],
	[CreateTextbox, dialogue_text13, dialogue_speakers13, dialogue_next_line13, dialogue_scripts13],
	[CreateTextbox, dialogue_text14, dialogue_speakers14, dialogue_next_line14, dialogue_scripts14],
	[CutsceneEndMusic],
	[CutsceneWait, 1],
	[CutscenePlayMusic, musBusScene, 11, false],
	[CutsceneMoveCameraToObject, objBus, 0.01],
	[CutsceneWait, 4],
	[CreateTextbox, dialogue_text15, dialogue_speakers15, dialogue_next_line15, dialogue_scripts15],
	[CreateTextbox, dialogue_text16, dialogue_speakers16, dialogue_next_line16, dialogue_scripts16],
	[CreateTextbox, dialogue_text17, dialogue_speakers17, dialogue_next_line17, dialogue_scripts17],
	[CutsceneMoveCameraToObject, objCrouton, 0.05],
	
	[CutsceneWait, 3],
	
	[CreateTextbox, dialogue_text18, dialogue_speakers18, dialogue_next_line18, dialogue_scripts18],
	[CreateTextbox, dialogue_text19, dialogue_speakers19, dialogue_next_line19, dialogue_scripts19],
	[CutsceneMoveCameraToObject, objCrouton, 1],
	[CutsceneEndMusic],
	[CutsceneFreezePlayer, false],
];

with (objGame) {
	hospitalCutscenePlayed = true;
}