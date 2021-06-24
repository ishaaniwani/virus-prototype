depth = -1;
scale = 3;
show_inventory = false;
show_items = false;

inv_slots = 9;
inv_slots_width = 3;
inv_slots_height = 3;

selected_slot = 0;
pickup_slot = -1;
m_slotx = 0;
m_sloty = 0;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

cell_size = 32;

inv_UI_width = 240;
inv_UI_height = 180;

sprite = sprInventoryUI;
spr_inv_items = sprInventoryItems;

spr_inv_items_columns = sprite_get_width(spr_inv_items) / cell_size; // Number of columns of items
spr_inv_items_rows = sprite_get_height(spr_inv_items) / cell_size;	// Number of rows of items


// Determining positions of where to draw certain GUI elements
inv_UI_x = (gui_width * 0.5) - (inv_UI_width * 0.5 * scale);
inv_UI_y = (gui_height * 0.5) - (inv_UI_height * 0.5 * scale);

// Player Name
info_x = inv_UI_x + (6 * scale);
info_y = inv_UI_y + (9 * scale);

// Player HP
hp_x = info_x;
hp_y = inv_UI_y + (23 * scale);

//Player Gold
gold_x = info_x;
gold_y = inv_UI_y + (32 * scale);

// Items Menu Header
inv_description_x = info_x;
inv_description_y = inv_UI_y + (57 * scale);

// Radio Menu Header
radio_description_x = info_x;
radio_description_y = inv_UI_y + (75 * scale);

// Items Menu Button
inv_button_x = info_x + (59 * scale);
inv_button_y = inv_description_y - (3 * scale);

// Radio Menu Button
radio_button_x = info_x + (59 * scale);
radio_button_y = inv_description_y + (15 * scale);

// Inventory Slots
slots_x = inv_UI_x + (96 * scale);
slots_y = inv_UI_y + (25 * scale);

x_buffer = 16;
y_buffer = 16;

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

// Inventory
//0 = Item
//1 = Number

ds_inventory = ds_grid_create(2, inv_slots);

// Items
enum item {
	none			= 0,
	health_potion	= 1,
	green_potion	= 2,
	height			= 3
}

// Give Player Sample Inventory
var yy = 0; repeat(inv_slots) {
	ds_inventory[# 0, yy] = irandom_range(1, item.height - 1);
	ds_inventory[# 1, yy] = irandom_range(1, 10);
	yy += 1;	
}