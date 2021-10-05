if(x >= room_width-400){
	x -= 5;
}
else
{
	shootingFrame -= 1;
	if(shootingFrame = 0 && timesShot <= 4)
	{
		with(instance_create_depth(x-85, y+32, 5, oShooterBullet)){
			speed -= 20;
	}
		timesShot +=1;
		shootingFrame = 30;
	}
	if(timesShot > 4)
	{
		x -= 10;
	}
}

