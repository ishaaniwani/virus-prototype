portrait_index = 1;
type = "NPC";
voice = snd_voice2;
visible = false;
speaker_name = "Crouton";
text = ["Ahh... Crouton. There you are! It's good to see you.",
		"Thanks. Where's the patient?",
		"Behind the velvet rope. I've just unlocked it. It's remote controlled."
		];
speakers = [id, objCrouton, id]; // must be a speaker for each line
next_line = [0, 0, 0]; // you may need to add some zeros
// if you wanted to change what the person said after talking to them, then you can 
// do that with a script
scripts = [
	-1,
	[RemoveVelvetRope],
	-1
];