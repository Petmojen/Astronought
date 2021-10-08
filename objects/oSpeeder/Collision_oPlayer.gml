global.playerHealthPoints -= 20;
instance_id_get(0).image_blend = c_red;
instance_id_get(0).blendWait = 4;
audio_play_sound(PlayerHit, 10, false);
instance_destroy();