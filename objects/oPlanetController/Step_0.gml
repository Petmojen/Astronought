targetTimer -= 1;


if(targetTimer = 0) {
	randomPlanet = floor(random_range(0, 3));
	instance_create_depth(room_width+64, random_range(64, room_height-64), 350, planetArray[randomPlanet]);
	targetTimer = random_range(300, 900);
}