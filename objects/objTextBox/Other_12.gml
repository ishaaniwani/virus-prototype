 //[scripts, arg0, arg1...]
 
 // Runs any scripts from dialogue
if (is_array(scripts)) {
	
	var pagescript = scripts[page];
	
	// missing the very last part of the dialogue tutorial, nvm now
	if (choice_dialogue) {
		pagescript = pagescript[choice];	
	}
	
	if (pagescript != -1) {
		
		var len = array_length_1d(pagescript);
		if (len == 1) {
			script_execute(pagescript[0]);
		} else {
			var args = array_create(len - 1, 0);
			array_copy(args, 0, pagescript, 1, len - 1);
			ScriptExecuteAlt(pagescript[0], args);
		}
		
	}
}
