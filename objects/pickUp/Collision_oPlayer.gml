if(global.playerHealthPoints < 100) {
global.playerHealthPoints += 20;
}
instance_destroy();

if(x > room_width+32 || x < -32 || y > room_height+32 || y < 0){
	instance_destroy();
}