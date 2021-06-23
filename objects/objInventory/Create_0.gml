depth = -1 //controls what layer sprite is drawn on, inventory should appear on top of everything else
scale = 3;
global.show_inventory = false;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

cell_size = 11;
inv_slots = 7; // total number of inventory slots


inv_UI_width = 240;
inv_UI_height = 180;

sprite = sprInventoryUI;
cell_size = 11;

// Determining positions of where to draw certain GUI elements
inv_UI_x = (gui_width * 0.5) - (inv_UI_width * 0.5 * scale);
inv_UI_y = (gui_height * 0.5) - (inv_UI_height * 0.5 * scale);

info_x = inv_UI_x + (7 * scale);
info_y = inv_UI_y + (9 * scale);

hp_x = inv_UI_x + (7 * scale);
hp_y = inv_UI_y + (20 * scale);

gold_x = inv_UI_x + (7 * scale);
gold_y = inv_UI_y + (29 * scale);

inventory_x = inv_UI_x + (126 * scale);
inventory_y = inv_UI_y + (14 * scale);
inventory_yincrement = 19 * scale;

// Player Info
// 0 --> Name
// 1 --> HP
// 2 --> Gold

ds_player_info = ds_grid_create(2, 3);
ds_player_info[# 0, 0] = "Name";
ds_player_info[# 0, 1] = "HP";
ds_player_info[# 0, 2] = "Gold";

ds_player_info[# 1, 0] = "Scientist";
ds_player_info[# 1, 1] = 20;
ds_player_info[# 1, 2] = 0;

// Player Inventory
// 0 = Item

ds_inventory = ds_grid_create(1, inv_slots);

var yy = 0; repeat(inv_slots) {
	ds_inventory[# 0, yy] = "None";
	yy += 1;
}
