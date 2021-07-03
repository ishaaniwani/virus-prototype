// Grabs the info of what is talking and what they are saying.
// Remember that a script passes in the information to the textbox and gives it all this information

speaker_name = names[page];
voice = voices[page];
portrait_index = portraits[page];

if (!is_array(text[page])) {
	text_wrapped = StringWrap(text[page], text_max_width);
	str_len = string_length(text_wrapped);
	choice_dialogue = false;
} else {
	text_array = text[page];
	text_array_len = array_length_1d(text_array);
	choice_dialogue = true;
}

counter = 0;
text_slot = 0;