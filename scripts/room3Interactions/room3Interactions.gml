// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function room3Interactions(){
	
	if (global.room3_death_count == 0 and global.room3_story_progress == 0) {
		layer_set_visible("banner_level", true);
		global.room3_intro_counter -= 3;
		if (global.room3_intro_counter <= 0) {
			layer_set_visible("banner_level", false);
			global.room3_story_progress += 1;
		}
	}
	
	if (oDialog.visible == false) {
		switch (global.room3_intro_conversation) {
		    case 0: oDialog.draw_my_text("...", true); break;
			case 1: oDialog.draw_my_text("Who are you?", true); break;
			case 2: oDialog.draw_my_text("What am I to you?", true); break;
			case 3: oDialog.draw_my_text("Your controlling behaviour is worrying me...", true); break;
		}
	}
	

	if (x > 150) {
		var _distort = layer_get_fx("distort");
	
		var _g_DistortAmount = fx_get_parameter(_distort, "g_DistortAmount");
		
		if (keyboard_check(vk_right) or keyboard_check(vk_left)) {
			global.room3_last_moved = current_time;
			_g_DistortAmount += 0.8;
			fx_set_parameter(_distort, "g_DistortAmount", _g_DistortAmount);
		}
	}
	
	if (global.room3_intro_conversation < 4) {
		global.room3_last_moved = current_time;
	}
	
	if (global.room3_intro_conversation >= 4) {
		if (!keyboard_check(vk_right) and !keyboard_check(vk_left)) {
			if ((current_time - global.room3_last_moved)/1000 > 4) {
				hsp += accel + decel - 0.4; // to off set decel
			}
		}
	}
	
	
	
	if (x < 280) {
		layer_set_visible("Instructions", true);
	}

	if (x > 320) {
		layer_set_visible("Instructions", false);
	}

}