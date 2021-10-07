inversHealth = clamp(-global.playerHealthPoints, -100, 0);
image_xscale = inversHealth/100;
image_xscale = -image_xscale;