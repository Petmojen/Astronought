x = oStarDestroyer.x + posX;
y = oStarDestroyer.y + posY;
image_xscale = oStarDestroyer.destoyerSize + oStarDestroyer.turbo;
image_yscale = oStarDestroyer.destoyerSize;
image_alpha = oStarDestroyer.alphaFloat;

switch(oStarDestroyer.destoyerSize){
	case 0.25:
		posX = 101;
		posY = 5;
		break;
	case 0.5:
		posX = 202;
		posY = 10;
		break;
	case 1:
		posX = 404;
		posY = 20;
		break;
	case 1.8: 
		posX = 727;
		posY = 36;
		break;
}