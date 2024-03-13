
function coin_fetched() {
	
	oPlayer.coins++;
	audio_play_sound(sndCoin, 1, false);
	if (oPlayer.coins == 1) {
		oPlayer.jumpspeed += 2;
		oPlayer.max_hsp -= 1.5;		
	} else {
		oPlayer.jumpspeed += 0.1;
		oPlayer.max_hsp -= 0.2;	
	}
	
	
	if (coins > 0 and coins <= 2) {
		oDialog.draw_my_text(oPlayer.dialog[0][0], false);
		array_shift(oPlayer.dialog[0]);
	} else if (coins > 2 and coins <= 4) {
		oDialog.draw_my_text(oPlayer.dialog[1][0], false);
		array_shift(oPlayer.dialog[1]);
	} else if (coins > 4 and coins <= 7) {
		oDialog.draw_my_text(oPlayer.dialog[2][0], false);
		array_shift(oPlayer.dialog[2]);
	} else if (coins > 7) {
		oDialog.draw_my_text(oPlayer.dialog[3][0], false);
		array_shift(oPlayer.dialog[3]);
	}

}