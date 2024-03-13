draw_self();

draw_set_font(ftHudBold);

draw_set_color(#06294C);
draw_set_valign(fa_middle);

draw_text(389, 110, "Esc");
draw_text(392, 142, "q");

draw_set_font(ftHud);
draw_set_color(#1685f8);
draw_text(445, 112, "Restart level");
draw_text(435, 144, "Reset state");



if (room == Room1) {
	if (global.room2_finished) {
		oInstructions.sprite_index = sControls3;
		draw_set_color(#06294C);
		draw_text(392, 178, "2");
		draw_set_color(#1685f8);
		draw_text(430, 178, "to level 2");
		if (global.room3_finished) {
			oInstructions.sprite_index = sControls4;
			draw_set_color(#06294C);
			draw_text(392, 215, "3");
			draw_set_color(#1685f8);
			draw_text(430, 215, "to level 3");
			
		}
	}
} else if (room == Room2) {
	oInstructions.sprite_index = sControls3;
	draw_set_color(#06294C);
	draw_text(392, 178, "1");
	draw_set_color(#1685f8);
	draw_text(430, 178, "to level 1");
	if (global.room3_finished) {
		oInstructions.sprite_index = sControls4;
		draw_set_color(#06294C);
		draw_text(392, 215, "3");
		draw_set_color(#1685f8);
		draw_text(430, 215, "to level 3");	
	}
		
} else if (room == Room3) {
	oInstructions.sprite_index = sControls4;
	draw_set_color(#06294C);
	draw_text(392, 178, "1");
	draw_set_color(#1685f8);
	draw_text(430, 178, "to level 1");
	
	draw_set_color(#06294C);
	draw_text(392, 215, "3");
	draw_set_color(#1685f8);
	draw_text(430, 215, "to level 3");	
}

