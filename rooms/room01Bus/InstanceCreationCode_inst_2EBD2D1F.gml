var cutscene_already_played = false;

with (objGame) {
	cutscene_already_played = firstBusCutscenePlayed;	
}

if (cutscene_already_played) {
	instance_destroy();
	exit;
}

dialogue_text1 = ["Crouton! You're late, now drop and give me 20!"];
dialogue_speakers1 = [objSgtGlee.id];
dialogue_next_line1 = [-1];
dialogue_scripts1 = [-1];

dialogue_text2 = ["My man! How you been bro?"];
dialogue_speakers2 = [objEmanuel.id];
dialogue_next_line2 = [-1];
dialogue_scripts2 = [-1];

dialogue_text3 = ["Hi, Crouton! It's nice seeing you :)"];
dialogue_speakers3 = [objTracy.id];
dialogue_next_line3 = [-1];
dialogue_scripts3 = [-1];

dialogue_text4 = ["Welcome \"Crouton\". How are you feeling about getting ready to board?",
					["* Yes", "* No"], 
					"Ok, boarding now!",
					"Alright, just talk to me when you're ready."];
dialogue_speakers4 = [objRobot.id, objCrouton.id, objRobot.id, objRobot.id];
dialogue_next_line4 = [0, [2, 3], -1, -1];
dialogue_scripts4 = [-1, [-1, -1], [BusStartCutscene], -1];

t_scene_info = [
	[CutsceneFreezePlayer, true],
	
	[CutscenePlayMusic, musMenuMusic, 10, true],
	
	[CutsceneWait, 1],
	
	[CreateTextbox, dialogue_text1, dialogue_speakers1, dialogue_next_line1, dialogue_scripts1],
	
	[CreateTextbox, dialogue_text2, dialogue_speakers2, dialogue_next_line2, dialogue_scripts2],
	
	[CreateTextbox, dialogue_text3, dialogue_speakers3, dialogue_next_line3, dialogue_scripts3],
	
	[CreateTextbox, dialogue_text4, dialogue_speakers4, dialogue_next_line4, dialogue_scripts4],

];

with (objGame) {
	hospitalCutscenePlayed = true;
}