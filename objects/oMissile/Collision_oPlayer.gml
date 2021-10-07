global.playerHealthPoints -= 30;
audio_play_sound(PlayerHit, 10, false);
instance_destroy();