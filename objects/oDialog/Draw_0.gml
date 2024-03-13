
draw_self();

draw_set_font(ftHud);
draw_set_color(text_color);
draw_set_valign(fa_middle);


var _cursor = cursor_visible ? " _" : "  ";

draw_text_ext(oPlayer.x-10, oPlayer.y -50, text + _cursor, 20, 200);
draw_set_valign(fa_top);

// Timing for cursor blink (toggle visibility)
if (blocking) {
	if (current_time - last_toggle_time >= cursor_period) {
	    cursor_visible = !cursor_visible; // Toggle visibility
	    last_toggle_time = current_time; // Reset last toggle time
	}
	if (keyboard_check_pressed(vk_space)) {
		if (room == Room1) {
			global.room1_intro_conversation+=1;
		} else if (room == Room2) {
			global.room2_intro_conversation+=1;
		} else if (room == Room3) {
			global.room3_intro_conversation+=1;
		} else if (room == Room4) {
			global.room4_intro_conversation+=1;
		}
		
		oPlayer.blocked = false;
		oCamera.follow = oPlayer;
		oDialog.visible = false;
	}
} else { // not blocking
	if (current_time - dialog_initiated_time > 1000) {
		oDialog.visible = false;
	}
}

