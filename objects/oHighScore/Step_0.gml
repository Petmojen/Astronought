if(global.checkHighscore = 1){
	if(once = true){
		for(a = 0; a <= 9; a++){
			for(i = 5; i <= string_length(drawHighScore[a]); i++){
				scoreStore += string_char_at(drawHighScore[a], i);
			}
			if(scoreStore < global.scoreSystem){
				for(j = 9; j >= a; j -= 1){
					if(j > 0){
						drawHighScore[j] = drawHighScore[j - 1];	
					}
				}
				changeScore = 1;
				break;
			} else {
				scoreStore = "";
			}
		}
	once = false;
	}
}