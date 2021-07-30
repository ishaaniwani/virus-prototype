// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BusStartCutscene(){
	
	with (objTextBox) {
		event_perform(ev_other, ev_destroy);
	}
	
	RoomTransition(TRANS_TYPE.SLIDE, roomMenu);
	CutsceneFreezePlayer(false);
}