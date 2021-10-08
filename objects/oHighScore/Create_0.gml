global.checkHighscore = 0;
changeScore = 0;
once = true;

drawHighScore[0] = "";
drawHighScore[1] = "";
drawHighScore[2] = "";
drawHighScore[3] = "";
drawHighScore[4] = "";
drawHighScore[5] = "";
drawHighScore[6] = "";
drawHighScore[7] = "";
drawHighScore[8] = "";
drawHighScore[9] = "";
scoreStore = "";
textInput = "";
newHighScore = "";


ini_open("highscore.ini"){
	if(ini_read_string("aLive", 1, "create") != 1){
		ini_write_string("aLive", 1, "1");
		for(i = 0; i <= 9; i++){
			ini_write_string("highscore", i, "AAA/0");	
		}
	}
}
ini_close();

ini_open("highscore.ini"){
		for(i = 0; i <= 9; i++){
			drawHighScore[i] = ini_read_string("highscore", i, "No score");
		}
	}
ini_close();