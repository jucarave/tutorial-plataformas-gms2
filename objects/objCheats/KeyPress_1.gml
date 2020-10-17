for (var i=0;i<array_length_1d(cheats);i++) {
	var cheat = cheats[i];
	var cheatCode = cheat[0];
	var cheatFunction = cheat[1];
	
	if (string_pos(cheatCode, combination)) {
		cheatFunction();
		combination = "";
	}
}