shooterTimer -= 1;



if(shooterTimer <= 0)
{
	
	playerDirection = point_direction(x, y, oPlayer.x, oPlayer.y);
	direction = playerDirection;
	speed += 30; 
	image_angle = playerDirection + 180;
	
	shooterTimer = 120;
}

if(x > room_width + 500 ||x < -80){
	instance_destroy();
}
