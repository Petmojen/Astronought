x = oStarDestroyer.x + posX;
y = oStarDestroyer.y + posY;
image_xscale = oStarDestroyer.destoyerSize + oStarDestroyer.turbo;
image_yscale = oStarDestroyer.destoyerSize;
image_alpha = oStarDestroyer.alphaFloat;

switch(oStarDestroyer.destoyerSize){
	case 0.25:
		posX = 104;
		posY = 20;
		break;
	case 0.5:
		posX = 208;
		posY = 41;
		break;
	case 1:
		posX = 416;
		posY = 82;
		break;
	case 1.8: 
		posX = 749;
		posY = 148;
		break;
}