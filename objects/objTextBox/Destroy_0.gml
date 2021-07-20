if (instance_exists(objCutscene)) {
	CutsceneEndAction();
	exit;
}

if (instance_exists(objCrouton)) {
	with (objCrouton) {
		in_conversation = false;
	}
}

