/// @description Insert description here
if (scrolling = true) {
  vSpeed = 0.3;
  wallCollision = PlayerCollision();	
}
if ((wallCollision) and (mouse_check_button(mb_left))) {
	room_goto(room0);
}