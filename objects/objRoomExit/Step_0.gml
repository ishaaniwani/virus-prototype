 // @desc Cause a room transition

if (instance_exists(objScientist) and 
	position_meeting(objScientist.x, objScientist.y, id)){
	
	global.targetRoom = targetRoom;
	global.targetX = targetX;
	global.targetY = targetY;
	global.targetDirection = objScientist.direction;
	
	with (objScientist) {
		state = PlayerStateTransition;	
	}
	RoomTransition(TRANS_TYPE.FADE, targetRoom);
	instance_destroy();
}