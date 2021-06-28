box = sprTextBox;
frame = sprPortraitFrame;
portrait = sprPortraits;
namebox = sprNameBox;
scale = 3;

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
box_x = port_x + port_width;
box_y = port_y;
namebox_x = port_x;
namebox_y = box_y - namebox_height;

portrait_index = 0;