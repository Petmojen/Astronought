global.scoreSystem += 1000;
instance_destroy();
instance_create_depth(x, y, 1, oExplosion);

if(oLaser.image_xscale < 4){
	instance_destroy(other);
}