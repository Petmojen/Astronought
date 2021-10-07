
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
	case 4:
		draw_sprite(credits, image_index, room_width/2, room_height/2);
		if keyboard_check_pressed(vk_escape){drawDecide = 0};
		break;
}