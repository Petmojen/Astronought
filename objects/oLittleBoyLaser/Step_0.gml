if(image_xscale < 10)
{
	image_xscale += 0.25;
	image_yscale += 0.05;
}
else if (image_xscale >= 10 && laserTime <60)
{
	image_xscale += 10;
	laserTime++;
}
else 
{
	speed -= 15;
}

if(x < image_xscale){
	instance_destroy();
}