

spawnTimer -= 1;

if(global.scoreSystem < 20000 && global.stage = 1) {
    speederYPos = random_range(100, room_height - 100);
    clamp(speederYPos, 0, room_height);
    if(spawnTimer = 0) {
        instance_create_depth(room_width+50, speederYPos, 1, enemyArray[0]);
    }
} else if(global.scoreSystem >= 20000 && global.stage = 1) {
	global.stage = 1.5;
	global.targetTimer = 120;
	spawnTimer = 100000;
}

if(global.scoreSystem >= 20000 && global.scoreSystem < 150000 && global.stage = 2) {
	speederYPos = random_range(100, room_height - 100);
    clamp(speederYPos, 0, room_height);
    if(spawnTimer = 0) {
        instance_create_depth(room_width+50, speederYPos, 1, enemyArray[0]);
    }
	shooterYPos = random_range(100, room_height - 100);
	if(spawnTimer = 0) {
		instance_create_depth(room_width+50, shooterYPos, 1, enemyArray[1]);	
	}
} else if(global.scoreSystem >= 150000 && global.stage = 2){
	global.stage = 2.5;
	global.targetTimer = 120;
	spawnTimer = 100000;
}

if(global.scoreSystem >= 150000 && global.scoreSystem < 300000 && global.stage = 3){
	if (spawnTimer = 0) {
		shooterYPos = random_range(100, room_height - 100);
		littleBoyYPos = random_range(100, room_height - 100);
		instance_create_depth(room_width+50, shooterYPos, 1, enemyArray[1]);
		with(instance_create_depth(room_width+50, littleBoyYPos, 1, enemyArray[2])){
			speed -= 0.25;
		}
	}
} else if(global.scoreSystem >= 300000 && global.stage = 3){
		global.stage = 3.5;
		global.targetTimer = 120;
		spawnTimer = 100000;
}


if(spawnTimer = 0)
{
	spawnTimer = 60;
}