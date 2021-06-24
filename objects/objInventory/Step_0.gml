/// @description Insert description here
// You can write your code in this editor
// Used to open menu
keyMenu = keyboard_check_pressed(ord("C"));

if (keyMenu and show_items == false) {
	global.show_inventory = !global.show_inventory;
	global.move_control = !global.move_control;
}

if (global.show_inventory and keyboard_check_pressed(ord("X"))) {
	show_items = true;	
}

if (global.show_inventory and show_items and keyboard_check_pressed(ord("C"))) {
	show_items = false;	
}