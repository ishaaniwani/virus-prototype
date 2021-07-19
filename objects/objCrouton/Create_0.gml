 event_inherited();

state = PlayerStateFree;

image_speed = 0;
hSpeed = 0; // horizontal speed
vSpeed = 0; // vertical speed
speedWalk = 1.25; // movement speed: 2.0 pixels a frame

// makes it easy to change the character
spriteRun = sprCroutonRun;
spriteIdle = sprCrouton;
localFrame = 0;

portrait_index = 0;
voice = snd_voice1;
speaker_name = "Crouton";

radius = 10;
active_textbox = noone;

in_conversation = false;
inventory_opened = false
player_direction = 0;
exit_marker = false;

if (global.targetX != -1) {
	x = global.targetX;
	y = global.targetY;
	direction = global.targetDirection;
}

min_view_x = 0;
min_view_y = 0;
max_view_x = room_width - camera_get_view_width(view_camera[0]);
max_view_y = room_height - camera_get_view_height(view_camera[0]);