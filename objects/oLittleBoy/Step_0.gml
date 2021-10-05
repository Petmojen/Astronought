if(x <= room_width){
		shootingFrame -= 1;
	if(shootingFrame <= 0)
	{
	with(instance_create_depth(x,y,2,oLittleBoyLaser)){
		speed -= 0.25;
	}
		shootingFrame = 380;
	}
}