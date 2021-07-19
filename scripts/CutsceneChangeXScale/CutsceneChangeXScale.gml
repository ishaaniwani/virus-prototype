// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CutsceneChangeXScale(obj_id, xscale){
	
	if (argument_count > 1) {
		with (obj_id) {
			image_xscale = xscale;	
		}
	} else {
		with (obj_id) {
			image_xscale = -image_xscale;
		}
	}
	
	CutsceneEndAction();
}