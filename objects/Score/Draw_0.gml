
if(global.gameOver = 0){
	draw_text(10, 10, global.scoreSystem);
}
if(global.gameOver = 1){
	draw_set_color(c_red);
	draw_text(room_width/2, room_height/2, "GAME OVER");
	draw_text(room_width/2, room_height/2+20, global.scoreSystem);
}
