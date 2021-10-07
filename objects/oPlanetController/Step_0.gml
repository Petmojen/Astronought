targetTimer -= 1;


if(targetTimer = 0) {
	randomPlanet = irandom_range(0, 3);
	if(randomPlanet != 3){
		with(instance_create_depth(room_width+64, random_range(64, room_height-64), planetDepth, planetArray[randomPlanet])){
			randomSize = random_range(1, 3);
			image_xscale = randomSize;
			image_yscale = randomSize;
		}
	} else {
		instance_create_depth(room_width+241, random_range(64, room_height-64), planetDepth, planetArray[randomPlanet]);
	}
	targetTimer = random_range(300, 900);
}