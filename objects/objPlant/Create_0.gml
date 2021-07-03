voice = snd_voice3;
type = "Interactable";

text = ["Captured by the flowers natural beauty, you cant help but take a whiff- It smells like... Nothing.",
		"Its plastic. Embarrassed, you pretend to divert your attention elsewhere."];
		
speakers = [id, id]; // must be a speaker for each line
next_line = [0, -1]; // you may need to add some zeros
// if you wanted to change what the person said after talking to them, then you can 
// do that with a script

// Be very careful with how you format if you want your scripts to work
scripts = [
	-1,
	-1
];