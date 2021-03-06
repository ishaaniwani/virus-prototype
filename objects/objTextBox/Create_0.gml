
// sprites to use, these are converted into variables so that it is easier to change if needed, just come back here.
box = sprTextBox;
frame = sprPortraitFrame;
portrait = sprPortraits;
namebox = sprNameBox;
scale = 3;

// sprite dimensions, used for placing in the GUI
box_width = sprite_get_width(box) * scale;
box_height = sprite_get_height(box) * scale;
port_width = sprite_get_width(portrait) * scale;
port_height = sprite_get_height(portrait) * scale;
namebox_width = sprite_get_width(namebox) * scale;
namebox_height = sprite_get_height(namebox) * scale;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

port_x = (gui_width - box_width - port_width) * 0.5
port_y = (gui_height * 0.98) - port_height;

// We want the dialogue box to show on the top if the player is interacting with something in the lower half of the screen
// That way we see what we're interacting with and the dialogue box doesn't interfere with out view.

var topshow = false;

with (objScientist) {
	if (y >= 160) {
		topshow = true;
	}
}

if (topshow) {
	port_y = (gui_height * 0.02);
}

// Determine where to place what
box_x = port_x + port_width;
box_y = port_y;
namebox_x = port_x;
namebox_y = box_y - namebox_height;

x_buffer = 10 * scale;
y_buffer = 12 * scale;

text_max_width = box_width - (2 * x_buffer)

portrait_index = 0;
counter = 0;
pause = false;
text_slot = 0;

text[0] = "";
page = 0;
speaker_name = "";
voice = snd_voice2;

text_col = c_white;
name_col = c_yellow;
font = fntBigText;

draw_set_font(font);
text_height = 0.5 * string_height("M") * scale;

name_text_x = box_x + (box_width / 2) + (5 * scale);
name_text_y = box_y + y_buffer;

text_x = box_x + 2 * x_buffer - (5 * scale);
text_y = name_text_y + (text_height * 2 / 3);

choice = 0;
choice_col = c_lime;