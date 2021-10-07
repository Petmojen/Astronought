x -= 5;


k = k + pi/2;

y = yStart + Amplitude * PosOrNeg *dsin(k + sinMove);


if(x > room_width+80 ||x < -80){
	instance_destroy();
}
