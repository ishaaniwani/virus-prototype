box = sprTextBox;
scale = 3;

box_width = sprite_get_width(box) * scale;
box_height = sprite_get_height(box) * scale;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

box_x = (gui_width - box_width) * 0.5 - (2.5 * scale)
box_y = (gui_height * 0.98) - box_height;

x_buffer = 10 * scale;
y_buffer = 12 * scale;

text_max_width = box_width - (2 * x_buffer);

counter = 0;
pause = false;
text_slot = 0;

text[0] = "";
page = 0;
voice = snd_voice2;

text_col = c_white;
font = fntBigText;

draw_set_font(font);
text_height = 0.5 * string_height("M") * scale;

text_x = box_x + 2 * x_buffer - (5 * scale);
text_y = box_y + (text_height * 2 / 3);