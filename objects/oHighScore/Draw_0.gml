key_up = keyboard_check_pressed(vk_up);
key_down = keyboard_check_pressed(vk_down);
key_left = keyboard_check_pressed(vk_left);
key_right = keyboard_check_pressed(vk_right);

if(changeScore = 1){
		draw_set_font(fFipps);
		draw_set_halign(fa_center);
		selPosLR += key_right - key_left;
		
		if selPosLR >= 3 {selPosLR = 0};
		if selPosLR < 0 {selPosLR = 2};
		
		if(selPosLR = 0){
			selectedPos01 += key_down - key_up;
			if selectedPos01 >= 25 {selectedPos01 = 0};
			if selectedPos01 < 0 {selectedPos01 = 25 - 1};
			firstAlph = upperAlph[selectedPos01];
			color = c_yellow;
			draw_text_color(room_width/2 - 50, room_height/2, firstAlph, color, color, color, color, 1);
			color = c_white;
			draw_text_color(room_width/2, room_height/2, secondAlph, color, color, color, color, 1);
			draw_text_color(room_width/2 + 50, room_height/2, thirdAlph, color, color, color, color, 1);
		}
		
		if(selPosLR = 1){
			selectedPos02 += key_down - key_up;
			if selectedPos02 >= 25 {selectedPos02 = 0};
			if selectedPos02 < 0 {selectedPos02 = 25 - 1};
			secondAlph = upperAlph[selectedPos02];
			color = c_yellow;
			draw_text_color(room_width/2, room_height/2, secondAlph, color, color, color, color, 1);
			color = c_white;
			draw_text_color(room_width/2 - 50, room_height/2, firstAlph, color, color, color, color, 1);
			draw_text_color(room_width/2 + 50, room_height/2, thirdAlph, color, color, color, color, 1);
		}
		
		if(selPosLR = 2){
			selectedPos03 += key_down - key_up;
			if selectedPos03 >= 25 {selectedPos03 = 0};
			if selectedPos03 < 0 {selectedPos03 = 25 - 1};
			thirdAlph = upperAlph[selectedPos03];
			color = c_yellow;
			draw_text_color(room_width/2 + 50, room_height/2, thirdAlph, color, color, color, color, 1);
			color = c_white;
			draw_text_color(room_width/2 - 50, room_height/2, firstAlph, color, color, color, color, 1);
			draw_text_color(room_width/2, room_height/2, secondAlph, color, color, color, color, 1);
		}
		
		draw_text_color(room_width/2, room_height/2 + 150, "Press ENTER to finish input", color, color, color, color, 1);
		
		if(keyboard_check_pressed(vk_enter)){
			newHighScore = firstAlph + secondAlph + thirdAlph + " | " + string(global.scoreSystem);
			drawHighScore[a] = newHighScore;
			ini_open("highscore.ini"){
				for(i = 0; i <= 9; i++){
					ini_write_string("highscore", i, drawHighScore[i]);
			}
			}
			draw_set_halign(fa_left);
			changeScore = 0;
			ini_close();	
		}
}
