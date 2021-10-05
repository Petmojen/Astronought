checkPlayerPos = instance_id_get(1);

spawnTimer -= 1;

if(global.scoreSystem < 20000) {
    speederYPos = random_range(100, room_height - 100);
    clamp(speederYPos, 0, room_height);
    if(spawnTimer = 0) {
        instance_create_depth(room_width+50, speederYPos, 1, enemyArray[0])
    }
}

if(global.scoreSystem >= 20000 && global.scoreSystem < 50000)
{
	shooterYPos = random_range(100, room_height - 100);
	if(spawnTimer = 0) {
		instance_create_depth(room_width+50, shooterYPos, 1, enemyArray[1])	
	}
}

if(global.scoreSystem >= 50000)
{
	littleBoyYPos = random_range(100, room_height - 100);
	if (spawnTimer = 0) {
		with(instance_create_depth(room_width+50, littleBoyYPos, 1, enemyArray[2])){
			speed -= 0.25;
		}
	}
}


if(spawnTimer = 0)
{
	spawnTimer = 60;
}