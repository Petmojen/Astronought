global.playerHealthPoints -= 30;
instance_id_get(0).blendWait = 4;
audio_play_sound(PlayerHit, 10, false);
instance_destroy();