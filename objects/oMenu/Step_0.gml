key_up = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
key_down = keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down);
key_accept = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space);

if key_down || key_up {audio_play_sound(MenuUpDown, 10, false)};
if key_accept || keyboard_check_pressed(vk_escape) {audio_play_sound(MenuSpace, 10, false)};


selectedPos += key_down - key_up;
if selectedPos >= printLength {selectedPos = 0};
if selectedPos < 0 {selectedPos = printLength -1};

if(key_accept){
	switch(selectedPos){
		//Start
		case 0:
			room_goto_next();
			break;
		//Controls
		case 1:
			drawDecide = 2;
			break;
		case 2:
			drawDecide = 3;
			break;
		//Credits
		case 3:
			drawDecide = 4;
			break;
		
		case 4:
			game_end();
			break;
		}
}