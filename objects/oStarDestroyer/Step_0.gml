x -= speedFloat;
image_xscale = destoyerSize;
image_yscale = destoyerSize;
image_alpha = alphaFloat;

global.targetTimer -= 1;

if(global.stage == 1.5){
	if(x >= -300 && global.targetTimer <= 0){
		speedFloat = 8;
	}
	if(x <= -300){
		oEnemieController.spawnTimer = 600;
		global.targetTimer = 60;
		x = room_width + 250;
		y = random_range(250, 700);
		hangar01x = -15;
		hangar02x = 33;
		hangary = 24;
		destoyerSize = 0.5;
		alphaFloat = 0.75;
		speedFloat = 0.25;
		oPlanetController.planetDepth = 550;
		global.stage = 2;
	}
} else if (global.stage == 2.5){
	if(x >= -425 && global.targetTimer <= 0){
		speedFloat = 8;
	}
	if(x <= -425){
		oEnemieController.spawnTimer = 600;
		global.targetTimer = 60;
		x = room_width + 425;
		y = random_range(250, 700);
		destoyerSize = 1;
		alphaFloat = 0.90;
		hangar01x = -29;
		hangar02x = 71;
		hangary = 51;
		speedFloat = 0.15;
		global.stage = 3;
	}
} else if (global.stage == 3.5){
	if(x >= -425 && global.targetTimer <= 0){
		speedFloat = 8;
	}
	if(x <= -425){
		oEnemieController.spawnTimer = 600;
		global.targetTimer = 60;
		x = room_width + 760;
		y = -41;
		destoyerSize = 1.8;
		alphaFloat = 1;
		hangar01x = -29;
		hangar02x = 71;
		hangary = 51;
		speedFloat = 0.5;
		global.stage = 4;
	}	
}

//Stage 1
if(global.targetTimer = 0 && global.stage = 1){
	with(instance_create_depth(x+hangar01x, y+hangary, 499, oSpeederIdle)){
		image_xscale = -0.1;
		image_yscale = 0.1;
		image_alpha = other.alphaFloat;
		speed = 1;
	}
	with(instance_create_depth(x+hangar02x, y+hangary, 499, oSpeederIdle)){
		image_xscale = -0.1;
		image_yscale = 0.1;
		image_alpha = other.alphaFloat;
		speed = 1;
	}
	image_alpha = 0.25;
	global.targetTimer = 60;


//Stage 2
} else if (global.targetTimer = 0 && global.stage = 2){
	with(instance_create_depth(x+hangar01x, y+hangary, 499, oSpeederIdle)){
		image_xscale = -0.25;
		image_yscale = 0.25;
		image_alpha = other.alphaFloat;
		speed = 1;
	}
	with(instance_create_depth(x+hangar02x, y+hangary, 499, oShooterIdle)){
		image_xscale = -0.25;
		image_yscale = 0.25;
		image_alpha = other.alphaFloat;
		speed = 1;
	}

	global.targetTimer = 60;

//Stage 3
} else if (global.targetTimer = 0 && global.stage = 3){
	with(instance_create_depth(x+hangar01x, y+hangary, 499, oShooterIdle)){
		image_xscale = -0.25;
		image_yscale = 0.25;
		image_alpha = other.alphaFloat;
		speed = 1;
	}
	with(instance_create_depth(x+hangar02x, y+hangary, 499, oLittleBoyIdle)){
		image_xscale = -0.25;
		image_yscale = 0.25;
		image_alpha = other.alphaFloat;
		speed = 1;
	}

	global.targetTimer = 60;

//Boss
} else if (global.stage = 4){
	if(x <=710){
		speedFloat = 0;
	}
	
} else if (global.stage = 4.5){
	
}
