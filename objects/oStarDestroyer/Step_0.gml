x -= 0.25;
image_xscale = destoyerSize;
image_yscale = destoyerSize;

targetTimer -= 1;

if(targetTimer = 0 && global.scoreSystem < 20000){
	with(instance_create_depth(x+hangar01x, y+hangar01y, 599, oSpeederIdle)){
		image_xscale = -0.1;
		image_yscale = 0.1;
		speed = 1;
	}
	with(instance_create_depth(x+hangar02x, y+hangar02y, 599, oSpeederIdle)){
		image_xscale = -0.1;
		image_yscale = 0.1;
		speed = 1;
	}
	targetTimer = 60;
} else if (targetTimer = 0 && global.scoreSystem >= 20000 && global.scoreSystem < 50000){
	with(instance_create_depth(x+hangar01x, y+hangar01y, 599, oShooterIdle)){
		image_xscale = -0.1;
		image_yscale = 0.1;
		speed = 1;
	}
	with(instance_create_depth(x+hangar02x, y+hangar02y, 599, oShooterIdle)){
		image_xscale = -0.1;
		image_yscale = 0.1;
		speed = 1;
	}
	targetTimer = 60;
}
