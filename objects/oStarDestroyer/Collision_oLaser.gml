if(global.stage = 4.75){
	instance_create_depth(x,y,300, oWhiteDestroyer);
	bossHP -= 1;	
	instance_destroy(other);
	global.scoreSystem += 1000;
	inputAccept = false;	
}

if(bossHP = 0)
{
	global.scoreSystem += 1890000;
	instance_destroy();
	instance_destroy(oStarJet01);
	instance_destroy(oStarJet02);
	instance_destroy(oStarJet03);
	global.gameOver = 2;
}