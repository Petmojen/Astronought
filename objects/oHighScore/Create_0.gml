global.checkHighscore = 0;
changeScore = 0;

scoreStore = "";
newHighScore = "";
once = true;

firstAlph = "A";
secondAlph = "A";
thirdAlph = "A";
selectedPos01 = 0;
selectedPos02 = 0;
selectedPos03 = 0;
selPosLR = 0;
 
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




ini_open("highscore.ini"){
	if(ini_read_string("aLive", 1, "create") != 1){
		ini_write_string("aLive", 1, "1");
		for(i = 0; i <= 9; i++){
			ini_write_string("highscore", i, "AAA|0");	
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

//First letter
upperAlph[0] = "A";
upperAlph[1] = "B";
upperAlph[2] = "C";
upperAlph[3] = "D";
upperAlph[4] = "E";
upperAlph[5] = "F";
upperAlph[6] = "G";
upperAlph[7] = "H";
upperAlph[8] = "I";
upperAlph[9] = "J";
upperAlph[10] = "K";
upperAlph[11] = "L";
upperAlph[12] = "M";
upperAlph[13] = "N";
upperAlph[14] = "O";
upperAlph[15] = "P";
upperAlph[16] = "Q";
upperAlph[17] = "R";
upperAlph[18] = "S";
upperAlph[19] = "T";
upperAlph[20] = "U";
upperAlph[21] = "V";
upperAlph[22] = "W";
upperAlph[23] = "X";
upperAlph[24] = "Y";
upperAlph[25] = "Z";