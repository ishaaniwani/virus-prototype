/// @description Insert description here
if (scrolling = true) {
  vSpeed = 0.5;
  wallCollision = PlayerCollision();	
}
if ((wallCollision) and (mouse_check_button(mb_left))) {
	room_goto(room0);
}