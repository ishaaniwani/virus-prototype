 // @desc Cause a room transition

if (instance_exists(objCrouton) and 
	position_meeting(objCrouton.x, objCrouton.y, id)){
	
	global.targetRoom = targetRoom;
	global.targetX = targetX;
	global.targetY = targetY;
	global.targetDirection = objCrouton.direction;
	
	with (objCrouton) {
		state = PlayerStateTransition;	
	}
	RoomTransition(TRANS_TYPE.FADE, targetRoom);
	instance_destroy();
}