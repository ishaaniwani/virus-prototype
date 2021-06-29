
speaker_name = names[page];
voice = voices[page];
portrait_index = portraits[page];

text_wrapped = StringWrap(text[page], text_max_width);
str_len = string_length(text_wrapped);
counter = 0;
text_slot = 0;