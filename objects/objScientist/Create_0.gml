event_inherited();

state = PlayerStateFree;

image_speed = 0;
hSpeed = 0; // horizontal speed
vSpeed = 0; // vertical speed
speedWalk = 1.25; // movement speed: 2.0 pixels a frame

// makes it easy to change the character
spriteRun = sprScientistRun;
spriteIdle = sprScientist;
localFrame = 0;

portrait_index = 0;
voice = snd_voice1;
speaker_name = "Scientist";

radius = 16;
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