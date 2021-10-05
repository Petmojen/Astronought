checkPlayerPos = instance_id_get(0);

spawnTimer -= 1;


if(global.scoreSystem <= 20000) {
	speederYPos = random_range(checkPlayerPos.y - 200, checkPlayerPos.y +200);
	clamp(speederYPos, 0, room_height);
	if(spawnTimer = 0) {
		instance_create_depth(room_width+50, speederYPos, 1, enemyArray[0])	
	}
}

if(global.scoreSystem >= 20000 && global.scoreSystem <= 500000)
{
	shooterYPos = random_range(100, room_height - 100);
	if(spawnTimer = 0) {
		instance_create_depth(room_width+50, shooterYPos, 1, enemyArray[1])	
	}
}


if(spawnTimer = 0)
{
	spawnTimer = 60;
}