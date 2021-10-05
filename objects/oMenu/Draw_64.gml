draw_set_font(fOver_There);
draw_text(x, y, "Astronought");

draw_set_font(fFipps);
for(i = 0; i < printLength; i++){
	
	var color = c_white;
	if selectedPos == i {color = c_yellow};
	draw_text_color(x, y + 250 + i*25, printText[i], color, color, color, color, 1);
}