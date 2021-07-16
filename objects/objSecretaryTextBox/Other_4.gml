// Only active this textbox in the room its supposed to be in.
if (room == livingRoom) {
	instance_activate_object(id);
	//event_user(0);	
} else {
	instance_deactivate_object(id);
}