if (room == room01Hospital) {
	visible = true;
} else {
	visible = false; 
	with (hitbox) {
		instance_destroy();	
	}
}