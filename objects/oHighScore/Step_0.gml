if(global.checkHighscore = 1){
	if(once = true){
		for(a = 0; a <= 9; a++){
			for(i = 5; i <= string_length(drawHighScore[a]); i++){
				scoreStore += string_char_at(drawHighScore[a], i);
			}
			//check if bigger than global.score
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

//if(global.checkHighscore = 1){
//	if(once = 1){
//		for(a = 0; a <= 9; a++){
//			for(i = 5; i <= string_length(drawHighScore[a]); i++){
//				nextChar = string_char_at(drawHighScore[a], i);
//				scoreStore = scoreStore + nextChar;				
//				if(scoreStore < string(global.scoreSystem)){
//					show_debug_message(a);
//					show_debug_message(scoreStore);
//					for(i = 9; i >= a; i -= 1){
//						show_debug_message(i);
//						if(i > 0){
//							drawHighScore[i] = drawHighScore[i - 1];
//						}
//					}
//					changeScore = 1;
//					break;
//				} else {
//					scoreStore = "";
//				}
//			}
//		}
//	once = 0;
//	}
//	global.checkHighscore = 0;
//}