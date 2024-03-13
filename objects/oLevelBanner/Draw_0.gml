
draw_self();

draw_set_font(ftHudBig);

if (room == Room1) {
	draw_set_color(#1685F8);
	draw_set_valign(fa_middle);

	draw_text(40, 230, "Level 1 ");

	draw_set_color(#F52789);
	draw_text(280, 230, "Mammon");
} else if (room == Room2) {
	draw_set_color(#EE1C24);
	draw_set_valign(fa_middle);

	draw_text(40, 230, "Level 2 ");

	draw_set_color(#1FC44E);
	draw_text(280, 230, "Perceptual");	
	
	draw_set_color(#291EED);
	draw_text(600, 230, "Mirage");	
	
} else if (room == Room3) {
	draw_set_color(#1685F8);
	draw_set_valign(fa_middle);

	draw_text(40, 230, "Level 3 ");
	

	draw_set_color(#F52789);
	draw_text(280, 230, "Control");	
	draw_set_color(#1685F8);
	draw_line(270, 230, 500, 230);
	draw_line(270, 231, 500, 231);

	
}