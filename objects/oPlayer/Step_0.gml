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

if(keyboard_check(vk_space)){movementSpeed = 3;}else{movementSpeed = 6;};

blendWait -= 1;
if(blendWait >= 0){
	image_blend = c_red;
} else {	
	image_blend = c_white;
}

if(weaponSelect = 1){
	shootingCooldown -= 1;
	shootingCooldown = clamp(shootingCooldown, 0, 10);
	if(keyboard_check(vk_space) && shootingCooldown <= 0){
		chargeRate += 1;
		clamp(chargeRate, 0, 60);
		scaleY = chargeRate/80;
		scaleX = chargeRate/20;
		if(chargeGun = 0){instance_create_depth(x+36, y-6, 1, oChargeGun); chargeGun = 1};
		if(chargeRate >= 60) {
			fireBool = 1;
			shootingCooldown = 30;
			chargeRate = 0;
			
		}
	} else {
		instance_destroy(oChargeGun);
		chargeGun = 0;
		chargeRate = 0;
	}
}

if(weaponSelect = 0){
	shootingCooldown -= 1;
	shootingCooldown = clamp(shootingCooldown, 0, 10);
	

	if(keyboard_check(vk_space) && shootingCooldown <= 0){
		chargeRate = 1;
		scaleY = chargeRate/80;
		scaleX = chargeRate/20;
		fireBool = 1;
		shootingCooldown = 10;
		audio_play_sound(PlayerShoot, 10, false);
	}
}

if(fireBool = 1){
		with(instance_create_depth(x+26, y-10, 1, oLaser)){
				speed = 10;
				randomDirection = random_range(-3, 3);
				direction = randomDirection;
				image_angle = randomDirection;
				image_xscale += other.scaleX;
				image_yscale += other.scaleY;
		}
		instance_destroy(oChargeGun);
		//rekyl
		x -= 10 + scaleX*10;
		chargeGun = 0;
		fireBool = 0;
}

if(global.playerHealthPoints <= 0){
	global.gameOver	= 1;
	instance_destroy(oJetpackFlames);
	instance_destroy();
	instance_destroy(oStarDestroyer);
	instance_destroy(oStarJet01);
	instance_destroy(oStarJet02);
	instance_destroy(oStarJet03);
	instance_destroy(oMissile);
}

x += playerPosX;
y += playerPosY;

if(global.stage != 4.25){
	clampY = 32
} else {
	clampY = 350;
}

x = clamp(x, 32, room_width-32);
y = clamp(y, clampY, room_height-64);
