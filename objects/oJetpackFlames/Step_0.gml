key_up = keyboard_check(ord("W")) || keyboard_check(vk_up);
key_down = keyboard_check(ord("S")) || keyboard_check(vk_down);

var pack = instance_id_get(0);

if(key_up) {
	if(image_yscale <= 1.5){
		image_yscale += 0.1;
	}
} else if (key_down) {
	if(image_yscale >=0.4) {
		image_yscale -= 0.1;
	}
} else {
	if(image_yscale > 1) {
		image_yscale -= 0.1;
	} else if(image_yscale < 1) {
		image_yscale += 0.1;
	}
}


x = pack.x - 14;
y = pack.y + 10;