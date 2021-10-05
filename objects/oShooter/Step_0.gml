if(x >= room_width-400){
	x -= 5;
}

else
{
	shootingFrame -= 1;
	if(shootingFrame = 0)
	{
		timesShot +=1;
		shootingFrame = 30;
	}
	if(timesShot >= 1)
	{
		x -= 10;
	}

}

