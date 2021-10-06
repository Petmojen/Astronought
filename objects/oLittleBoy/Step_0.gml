shootingFrame -= 1;

if(shootingFrame <= 0)
{
	with(instance_create_depth(x-72,y+23,5,oLittleBoyLaser)){
		speed -= 0.25;
	}

	shootingFrame = 380;
	
}

if(x > room_width+80 ||x < -80){
	instance_destroy();
}
