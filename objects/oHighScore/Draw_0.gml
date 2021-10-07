if(changeScore = 1){
	draw_text(room_width/2, room_height/2, textInput);
	if(string_length(textInput) <= 2){
		textInput = keyboard_string;
	} else {
		newHighScore = textInput + "/" + string(global.scoreSystem);
		drawHighScore[a] = newHighScore;
		ini_open("highscore.ini"){
			for(i = 0; i <= 9; i++){
				ini_write_string("highscore", i, drawHighScore[i]);
			}
		}
		changeScore = 0;
		ini_close();
	}
}
