
voice = voices[page];

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