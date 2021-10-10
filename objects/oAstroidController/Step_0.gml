if(sendAstroids = true){
	timerTarget -= 1;
	if(timerTarget <= 0){
		randomAstroid = irandom_range(0, 3);
		switch(randomAstroid){
			case 0:
				with(instance_create_depth(room_width+100, random_range(60, room_height-60), 2, oAstroidBig)){
					image_angle = 90;
					speed = -15;
				}
				timerTarget = 300;
				break;
			case 1:
				with(instance_create_depth(room_width+100, random_range(60, room_height-60), 2, oAstroidMedium)){
					speed = -15;
				}
				timerTarget = 300;
				break;
			case 2:
				with(instance_create_depth(room_width+100, random_range(60, room_height-60), 2, oAstroidSmall)){
					speed = -15;
				}
				timerTarget = 300;
				break;
		}
	}
}