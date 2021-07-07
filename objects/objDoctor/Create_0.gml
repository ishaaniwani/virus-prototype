portrait_index = 1;
type = "NPC";
voice = snd_voice2;
speaker_name = "Crouton";
text = ["Hey there! I'm Crouton!",
		"Hey, aren't they putting you in the actual game?",
		"Yup! I'm excited.",
		["* I'm happy for you.", "* I'm more handsome."],
		"Thanks for supporting me! I've unlocked the velvet rope.",
		"Shove Off.",
		"We already talked and I removed the rope. Good luck!"];
speakers = [id, objScientist, id, objScientist, id, id, id]; // must be a speaker for each line
next_line = [0, 0, 0, [4, 5], -1, -1, -1]; // you may need to add some zeros
// if you wanted to change what the person said after talking to them, then you can 
// do that with a script
scripts = [
	-1,
	-1,
	-1,
	[-1, -1],
	-1,
	-1,
];