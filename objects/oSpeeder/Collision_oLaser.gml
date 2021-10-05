global.scoreSystem += 1000;
instance_destroy();

if(oLaser.image_yscale < 3.40){
	instance_destroy(other);
}