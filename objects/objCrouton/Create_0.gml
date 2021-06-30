portrait_index = 0;
type = "NPC";
voice = snd_voice2;
speaker_name = "Crouton";
text = ["Hey there! I'm Crouton!",
		"Hey, aren't they putting you in the actual game?",
		"Yup! I'm excited.",
		["* I'm happy for you.", "* I'm more handsome."],
		"Thanks!",
		"Shove Off."];
speakers = [id, objScientist, id, objScientist, id, id]; // must be a speaker for each line
next_line = [0, 0, 0, [4, 5], -1, -1]; // you may need to add some zeros