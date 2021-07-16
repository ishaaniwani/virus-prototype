// Parent class of all NPCs

type = "NPC"; // Easy way to know what type of object it is
portrait_index = 8; // what portrait to display during conversation
voice = snd_voice2; // what voice to use
speaker_name = "Anonymous"; // the name of the player
text[0] = "This person has nothing to say"; // What the player will say
speakers = [id]; // who is saying what in the conversation, id means itself
next_line = [0]; // what the next line in the convo will be
scripts = -1; // if you want to run any scripts that change the game world