if(checkHighscore = 1){
	//make array of ini list
	ini_open("highscore.ini"){
		for(i = 0; i <= 9; i++){
			drawHighScore[i] = ini_read_string("highscore", i, "No score");
			show_debug_message(drawHighScore[i]);
		}
	}
	//check array if score is bigger
	for(a = 0; a <= 9; a++){
		for(i = 5; i <= string_length(drawHighScore[a]); i++){
			nextChar = string_char_at(drawHighScore[a], i);
			scoreStore = scoreStore + nextChar;
		}
		if(scoreStore < global.scoreSystem){
			show_debug_message("PushDown:" + scoreStore);
			show_debug_message(a);
			changeScore = 1;
			for(i = 9; i >= a; i -= 1){
				drawHighScore[i] = drawHighScore[i - 1];
			}
			break;
		} else {
			scoreStore = "";
		}
	}
	
	checkHighscore = 0;
	ini_close();
}