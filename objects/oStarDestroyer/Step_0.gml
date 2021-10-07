x -= speedFloat;
image_xscale = destoyerSize;
image_yscale = destoyerSize;
image_alpha = alphaFloat;

global.targetTimer -= 1;
stopEnemies -= 1;

if(global.stage == 1.5){
	if(x >= -300 && global.targetTimer <= 0){
		speedFloat = 8;
		turbo = 0.5;
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
		turbo = 0;
		oPlanetController.planetDepth = 550;
		global.stage = 2;
	}
} else if (global.stage == 2.5){
	if(x >= -425 && global.targetTimer <= 0){
		speedFloat = 8;
		turbo = 0.5;
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
		turbo = 0;
		global.stage = 3;
	}
} else if (global.stage == 3.5){
	if(x >= -425 && global.targetTimer <= 0){
		speedFloat = 8;
		turbo = 0.5;
	}
	if(x <= -425){
		global.targetTimer = 60;
		x = room_width + 760;
		y = -41;
		destoyerSize = 1.8;
		alphaFloat = 1;
		hangar01x = -47;
		hangar02x = 123;
		hangary = 89;
		speedFloat = 6;
		turbo = 0;
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
		image_xscale = -0.5;
		image_yscale = 0.5;
		image_alpha = other.alphaFloat;
		speed = 1;
	}
	with(instance_create_depth(x+hangar02x, y+hangary, 499, oLittleBoyIdle)){
		image_xscale = -0.5;
		image_yscale = 0.5;
		image_alpha = other.alphaFloat;
		speed = 1;
	}

	global.targetTimer = 60;

//Boss
} else if (global.stage = 4){
	if(x <= 710){
		speedFloat = 0;
		randEnemies = irandom_range(0, 2);
		randEnemies2 = irandom_range(0, 2);
		oEnemieController.spawnTimer = 60;
		global.targetTimer = 30;
		global.stage = 4.25;
	}
} else if(global.stage = 4.25 && global.targetTimer = 0){
		//left hangar
		switch(randEnemies){
			case 0:
				with(instance_create_depth(x+hangar01x, y+hangary, 499, oSpeederIdle)){
					image_xscale = -1;
					speed = 10;
				}
				break;
			case 1:
				with(instance_create_depth(x+hangar01x, y+hangary, 499, oShooterIdle)){
					image_xscale = -1;
					speed = 10;
				}
				break;
			case 2:
				with(instance_create_depth(x+hangar01x, y+hangary, 499, oLittleBoyIdle)){
					image_xscale = -1;
					speed = 10;
				}	
				break;
		}
		//right hangar
		switch(randEnemies2){
			case 0:
				with(instance_create_depth(x+hangar02x, y+hangary, 499, oSpeederIdle)){
					image_xscale = -1;
					speed = 10;
				}
				break;
			case 1:
				with(instance_create_depth(x+hangar02x, y+hangary, 499, oShooterIdle)){
					image_xscale = -1;
					speed = 10;
				}
				break;
			case 2:
				with(instance_create_depth(x+hangar02x, y+hangary, 499, oLittleBoyIdle)){
					image_xscale = -1;
					speed = 10;
				}	
				break;
		}
	
	if(stopEnemies <= 0){
		global.stage = 4.30;
	}
	global.targetTimer = 60;
} else if(global.stage = 4.30){
	global.targetTimer = 999999999999999;
	oEnemieController.spawnTimer = 9999999999999999;
	wait -= 1;
	if(y > -375){
		y -= 1;
	} else {
		global.stage = 4.5;
	}
} else if (global.stage = 4.5){
	
}
