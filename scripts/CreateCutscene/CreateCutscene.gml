// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreateCutscene(scene_info){
	var inst = instance_create_layer(0, 0, "Instances", objCutscene);
	with (inst) {
		scene_info = argument0;
		event_perform(ev_other, ev_user0);
	}
}