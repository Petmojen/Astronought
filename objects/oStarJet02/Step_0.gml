x = oStarDestroyer.x + posX;
y = oStarDestroyer.y + posY;
image_xscale = oStarDestroyer.destoyerSize + oStarDestroyer.turbo;
image_yscale = oStarDestroyer.destoyerSize;
image_alpha = oStarDestroyer.alphaFloat;

switch(oStarDestroyer.destoyerSize){
	case 0.25:
		posX = 103;
		posY = 15;
		break;
	case 0.5:
		posX = 206;
		posY = 29;
		break;
	case 1:
		posX = 413;
		posY = 59;
		break;
	case 1.8: 
		posX = 743;
		posY = 106;
		break;
}