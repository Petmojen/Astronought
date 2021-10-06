if(x >= room_width-150){
	x -= 5;
} else {
	x -= 15;	
}

if(x > room_width+57 ||x < -57){
	instance_destroy();
}