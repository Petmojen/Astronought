global.scoreSystem += 5000;
instance_destroy();
instance_create_depth(x, y, 1, oExplosion);

if(oLaser.image_xscale < 7){
	instance_destroy(other);
}