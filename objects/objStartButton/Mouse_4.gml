/// @description Checks for a collision between the mouse follower and this object
testx = objMouseFollower.x;
testy = objMouseFollower.y;

if (place_meeting(x, y, objMouseFollower)) {
	room_goto(room0);	
}
