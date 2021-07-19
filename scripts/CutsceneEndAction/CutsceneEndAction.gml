// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CutsceneEndAction(){
	
	with (objCutscene) {
		scene++;
		if (scene > array_length_1d(scene_info) - 1) {
			instance_destroy();
			exit;
		}
	
		event_perform(ev_other, ev_user0);
	}

}