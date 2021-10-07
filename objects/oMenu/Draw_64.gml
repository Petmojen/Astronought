
switch(drawDecide){
	case 0:
		draw_set_font(fOver_There);
		draw_text(x, y, "Astronought");

		draw_set_font(fFipps);
		for(i = 0; i < printLength; i++){
	
			var color = c_white;
			if selectedPos == i {color = c_yellow};
			draw_text_color(x, y + 250 + i*25, printText[i], color, color, color, color, 1);
		}
		break;
	case 1:
		break;
	case 2:
		draw_sprite(controlls, image_index, room_width/2, room_height/2);
		if keyboard_check_pressed(vk_escape){drawDecide = 0};
		break;
	case 3:
		draw_set_halign(fa_center);
		draw_set_font(fOver_There);
		draw_text(room_width/2, room_height/5, "Highscore");
		draw_set_font(fFipps);
		ini_open("highscore.ini"){
			for(i = 0; i <= 9; i++){
				draw_text(room_width/2, room_height/3 + i*30, string(i + 1) + " : " + ini_read_string("highscore", i, ":No score"));
			}
		}
		if keyboard_check_pressed(vk_escape){drawDecide = 0};
		draw_set_halign(fa_left);
		break;
	case 4:
		draw_sprite(credits, image_index, room_width/2, room_height/2);
		if keyboard_check_pressed(vk_escape){drawDecide = 0};
		break;
}