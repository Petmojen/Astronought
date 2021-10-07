global.checkHighscore = 0;
changeScore = 0;

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
newHighScore = ""



ini_open("highscore.ini"){
	if(ini_read_string("aLive", 1, "create") != 1){
		ini_write_string("aLive", 1, "1");
	}
}
ini_close();