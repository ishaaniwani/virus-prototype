/// @description Checks for a collision between the mouse follower and this object

if (place_meeting(x, y, objMouseFollower)) {
	audio_play_sound(souStartClick, 80, false)
	room_goto(room0);	
}
