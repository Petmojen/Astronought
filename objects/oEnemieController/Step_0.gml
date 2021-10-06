spawnTimer -= 1;

if(global.scoreSystem < 20000 && spawnTimer = 0) 
{
	speederYPos = random_range(100, room_height - 100);
	while(speederYPos <= oldYpos+40 && speederYPos >= oldYpos-40){
		speederYPos = random_range(100, room_height - 100);
	}
	
    instance_create_depth(room_width+50, speederYPos, 1, enemyArray[0])
	oldYpos = speederYPos;
	spawnTimer = 60;
}

if(global.scoreSystem >= 20000 && global.scoreSystem < 50000 && spawnTimer = 0)
{
	shooterYPos = random_range(100, room_height - 100);
	while(shooterYPos <= oldYpos+60 && shooterYPos >= oldYpos-60){
		shooterYPos = random_range(100, room_height - 100);
	}
	
	instance_create_depth(room_width+50, shooterYPos, 1, enemyArray[1])	
	oldYpos = shooterYPos;
	spawnTimer = 120;
}

if(global.scoreSystem >= 50000 && spawnTimer = 0)
{
	littleBoyYPos = random_range(100, room_height - 100);
	while(littleBoyYPos <= oldYpos+60 && littleBoyYPos >= oldYpos-60){
		littleBoyYPos = random_range(100, room_height - 100);
	}
	
	with(instance_create_depth(room_width+50, littleBoyYPos, 1, enemyArray[2])){
		speed -= 0.25;
	}
	oldYpos = littleBoyYPos;
	spawnTimer = 60;
}


if(spawnTimer = 0)
{
	
}