// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CutsceneInstanceDestroyNearest(obj_id, x, y){
	var inst = instance_nearest(obj_id, x, y);
	CutsceneInstanceDestroy(inst);
}