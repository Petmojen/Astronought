
if(global.gameOver = 0){
	draw_text(10, 10, global.scoreSystem);
}
if(global.gameOver = 1){
	draw_sprite(sGameOver, image_index, room_width/2, room_height/2-150); 
	draw_text(room_width/2, room_height/2+20, global.scoreSystem);
}
