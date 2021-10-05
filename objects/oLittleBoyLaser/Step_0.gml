if(image_xscale < -10)
{
	image_xscale -= 0.5;
}

if (image_xscale >= -10 && x >= 0)
{
	image_xscale -= 2;
}
else 
{
	laserTime++;
}

if(laserTime = 380){
	speed -= 20;
}

if(x < image_xscale ||!place_meeting(x,y,oLittleBoy)){
	instance_destroy();
}