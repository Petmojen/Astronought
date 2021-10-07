if(global.gameOver = 0){
	draw_text(10, 10, global.scoreSystem);
}
if(global.gameOver = 1){
	draw_sprite(sGameOver, image_index, room_width/2, room_height/2-150);
	draw_set_halign(fa_center);
	draw_text(room_width/2, room_height/2+20, global.scoreSystem);
	draw_set_halign(fa_left);
	draw_sprite(BackESC, image_index, room_width/2, room_height/2 * 1.60);
	if keyboard_check_pressed(vk_escape){room_goto_previous()};
}
if(global.gameOver = 2){
	draw_set_font(fOver_There);
	draw_set_halign(fa_center);
	draw_text(room_width/2, room_height/5, "Victory");
	draw_set_font(fFipps);
	draw_text(room_width/2, room_height/3, global.scoreSystem);
	draw_sprite(BackESC, image_index, room_width/2, room_height/2 * 1.60);
	oPlayer.sprite_index = PlayerVictory;
	instance_destroy(oEnemieController);
	draw_set_halign(fa_left);
	global.checkHighscore = 1;
	if keyboard_check_pressed(vk_escape){room_goto_previous()};
}
