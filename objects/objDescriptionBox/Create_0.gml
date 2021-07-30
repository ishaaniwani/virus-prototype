// Description boxes is a slightly meagered down version of Textbox, it just doesn't have 
// portraits and names
// Why not have the same object? Well at first it was because I was lazy and didn't want to deal with all the logic
// but then I realized that there is a distinction, and that I do want to give priority to NPCs over interactable objects
// and while I could still do that with one class, it made more sense to have two different types to make priority simpler

var choice_color;

with (objGame) {
	choice_color = text_color;	
}

box = sprTextBox;
scale = 3;

box_width = sprite_get_width(box) * scale;
box_height = sprite_get_height(box) * scale;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

box_x = (gui_width - box_width) * 0.5 - (2.5 * scale)
box_y = (gui_height * 0.98) - box_height;

var topshow = false;

with (objCrouton) {
	if (y >= 160) {
		topshow = true;
	}
}

if (topshow) {
	box_y = (gui_height * 0.02);
}

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

choice = 0;
choice_col = choice_color;

draw_set_font(font);
text_height = 0.5 * string_height("M") * scale;

text_x = box_x + 2 * x_buffer - (5 * scale);
text_y = box_y + (text_height * 2 / 3);