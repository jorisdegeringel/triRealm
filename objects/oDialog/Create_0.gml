text = "";
cursor_visible = false;
last_toggle_time = current_time; // Record the start time for toggling
dialog_initiated_time = current_time;
cursor_period = 500; // Period to toggle cursor visibility in milliseconds
blocking = false;
text_color = #1685f8

function draw_my_text(_text, _blocking, _text_color = #1685f8) {
	oDialog.visible = true;
	oPlayer.blocked = _blocking;
	cursor_visible = false;
	text_color = _text_color;
	blocking = _blocking;
	dialog_initiated_time = current_time;
	text = 	_text;
}






