/// @description Insert description here
// You can write your code in this editor

with (objCrouton) {
	state = PlayerStateTransition;
}

if (leading == OUT) {
	
	percent = min(1, percent + TRANSITION_SPEED);
	if (percent >= 1) // If Screen fully obscured
	{
		room_goto(target);
		leading = IN;
	}
	
} else { //leading == IN
	percent = max(0, percent - TRANSITION_SPEED);
	if (percent <= 0) // If Screen fully revealed
	{
		with (objCrouton) {
			state = PlayerStateFree;	
		}
		instance_destroy();	
	}
}