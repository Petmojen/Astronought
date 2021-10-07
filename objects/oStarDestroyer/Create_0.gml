randomize();
checkPlayerPos = instance_id_get(1);

enemyArray[0] = oSpeeder;
enemyArray[1] = oShooter;
enemyArray[2] = oLittleBoy;

speedFloat = 0.25;

destoyerSize = 0.25;
alphaFloat = 0.5;

global.targetTimer = 5;

hangar01x = -4;
hangar02x = 18;
hangary = 14;

//Variables for bossfight 4.5
bossHover = 0.1;
bossWeaponType = 1;
bossShootingFrame = 30;
bossTimesShot = 0;
missileCounter = 0;