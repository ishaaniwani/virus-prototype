keyMenu = keyboard_check_pressed(ord("C"));
keyRadio = keyboard_check_pressed(ord("X"));


if (keyMenu and show_items == false) {
	show_inventory = !show_inventory;
	global.move_control = !global.move_control;
}

if (show_inventory and keyRadio) {
	show_items = true;	
} else if (show_inventory and show_items and keyMenu) {
	show_items = false;	
}

// Ensure that player can move after inventory has been turned off
if (show_inventory == false and show_items == false) {
	global.move_control = true;	
}

if (show_inventory = false) exit;

#region Mouse Select
mousex = device_mouse_x_to_gui(0);
mousey = device_mouse_y_to_gui(0);

var cell_xbuff = (cell_size + x_buffer) * scale;
var cell_ybuff = (cell_size + y_buffer) * scale;

var i_mousex = mousex - slots_x;
var i_mousey = mousey - slots_y;

var nx = i_mousex div cell_xbuff;
var ny = i_mousey div cell_ybuff;

if (nx >= 0 and nx < inv_slots_width and ny >= 0 and ny < inv_slots_height) {
	var sx = i_mousex - (nx * cell_xbuff);
	var sy = i_mousey - (ny * cell_xbuff);
	
	if ((sx < cell_size * scale) and (sy < cell_size * scale)) {
		m_slotx = nx;
		m_sloty = ny;	
	}
}

// Set Selected Slot to Mouse Position
selected_slot = min(inv_slots - 1, m_slotx + (m_sloty * inv_slots_width));
#endregion

var inv_grid = ds_inventory;
var ss_item = inv_grid[# 0, selected_slot];

if(pickup_slot != -1) {
	if (mouse_check_button_pressed(mb_left)) {
		if (ss_item == item.none) {
			inv_grid[# 0, selected_slot] = inv_grid[# 0, pickup_slot];
			inv_grid[# 1, selected_slot] = inv_grid[# 1, pickup_slot];
			
			inv_grid[# 0, pickup_slot] = item.none;
			inv_grid[# 1, pickup_slot] = 0;
			
			pickup_slot = -1;
			
		} else if (ss_item == inv_grid[# 0, pickup_slot]) {
			if(selected_slot != pickup_slot) {
				inv_grid[# 1, selected_slot] += inv_grid[# 1, pickup_slot];
				inv_grid[# 0, pickup_slot] = item.none;
				inv_grid[# 1, pickup_slot] = 0;
			}
			
			pickup_slot = -1;
		} else {
			var ss_item_num = inv_grid[# 1, selected_slot];
			inv_grid[# 0, selected_slot] = inv_grid[# 0, pickup_slot];
			inv_grid[# 1, selected_slot] = inv_grid[# 1, pickup_slot];
			
			inv_grid[# 0, pickup_slot] = ss_item;
			inv_grid[# 1, pickup_slot] = ss_item_num;
			
			//pickup_slot = -1;
		}
	}
} else if (ss_item != item.none) {
	if(mouse_check_button_pressed(mb_right)) {
		pickup_slot = selected_slot;
	}
		
}
