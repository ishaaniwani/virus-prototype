portrait_index = 2;
type = "NPC";
voice = snd_voice2;
visible = false;
speaker_name = "Secretary";

var unlocked;
with (objGame) {
	unlocked = rope_unlocked;	
}

if (unlocked) {
	text = ["I've unlocked it. Good luck!"];
	speakers = [id];
	next_line = [-1];
	scripts = [-1];	
} else {
	text = ["Ahh... Crouton. There you are! It's good to see you.",
		"Thanks. Where's the patient?",
		"Behind the velvet rope. I've just unlocked it. It's remote controlled."
		];
	speakers = [id, objCrouton, id]; // must be a speaker for each line
	next_line = [0, 0, 0]; // you may need to add some zeros
	scripts = [
		-1,
		[RemoveVelvetRope],
		-1
	];
}

livingRoom = room01Hospital;