/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(objCutscene)) {
	if (place_meeting(x, y, objCrouton)) {
		CreateCutscene(t_scene_info); 
	}
}