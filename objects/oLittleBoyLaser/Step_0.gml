if(image_xscale < 10)
{
	image_xscale += 0.5;
	image_yscale += 0.1;
}
else if (image_xscale >= 10 && laserTime <120)
{
	image_xscale += 5;
	laserTime++;
}
else 
{
	speed -= 15;
}

if(x < image_xscale){
	instance_destroy();
}