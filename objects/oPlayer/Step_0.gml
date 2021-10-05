key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
key_up = keyboard_check(ord("W")) || keyboard_check(vk_up);
key_down = keyboard_check(ord("S")) || keyboard_check(vk_down);

var moveLeftRight = key_right - key_left;
var moveUpDown = key_down - key_up;

playerPosX = moveLeftRight * movementSpeed;
playerPosY = moveUpDown * movementSpeed;

if(keyboard_check(ord("1"))){
	weaponSelect = 0;
} if(keyboard_check(ord("2"))){
	weaponSelect = 1;
}

if(weaponSelect = 1 && global.superPoints = 100 && keyboard_check_pressed(ord("E"))){
	
}

if(weaponSelect = 0){
	shootingCooldown -= 1;
	shootingCooldown = clamp(shootingCooldown, 0, 25);

	if(keyboard_check(vk_space) && shootingCooldown <= 0){
		chargeRate += 1;
		clamp(chargeRate, 0, 120);
		scaleY = chargeRate/50;
		scaleX = chargeRate/80;
		if(chargeRate >= 120) {
			fireBool = 1;
			shootingCooldown = 60;
			chargeRate = 0;
			//audio_play_sound(PlayerShoot, 10, false); bigger sound
		}
	} else {
		chargeRate = 0;
	}

	if(keyboard_check_released(vk_space) && shootingCooldown <= 0){
		fireBool = 1;
		shootingCooldown = 25;
		audio_play_sound(PlayerShoot, 10, false);
	}

	if(fireBool = 1){
		with(instance_create_depth(x+42, y+2, 1, oLaser)){
				speed = 10;
				image_yscale += other.scaleY;
		}
		fireBool = 0;
	}
}

if(global.playerHealthPoints <= 0){
	global.gameOver	= 1;
	instance_destroy();
}

x += playerPosX;
y += playerPosY;

x = clamp(x, 32, room_width-32);
y = clamp(y, 32, room_height-32);