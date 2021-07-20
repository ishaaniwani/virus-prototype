// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CutsceneMoveCameraToObject(n_obj, n_spd){
	if (!instance_exists(objCamera)) {
		exit;	
	}
	
	with (objCamera) {
		targetFollowing = n_obj;
		cam_speed = n_spd;
	}
	
	CutsceneEndAction();
}