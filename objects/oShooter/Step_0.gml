if(x >= room_width-400){
	x -= 5;
}
else
{
	shootingFrame -= 1;
	if(shootingFrame = 0 && timesShot <= 4)
	{
		timesShot +=1;
		
		with(instance_create_depth(x-85, y+32, 5, oShooterBullet)){
			speed -= 20;
		}
		if((timesShot % 2) == 0)
		{
			with(instance_create_depth(x-43, y-54, 5, oShooterBullet)){
				speed -= 10;
			}
		}
		
		shootingFrame = 30;
	}
	if(timesShot > 4)
	{
		x -= 10;
	}
}

