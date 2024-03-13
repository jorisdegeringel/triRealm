// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function room1Interactions(){
	
	if (global.room1_death_count == 0 and global.room1_story_progress == 0) {
		layer_set_visible("banner_level", true);
		global.room1_intro_counter -= 8;
		if (global.room1_intro_counter <= 0) {
			layer_set_visible("banner_level", false);
			global.room1_story_progress += 1;
		}
	}
	
	if (global.room1_death_count == 0 and global.room1_story_progress == 1) {
		layer_set_visible("distort", true);
		var _distort = layer_get_fx("distort");
	
		var _g_DistortAmount = fx_get_parameter(_distort, "g_DistortAmount");
		_g_DistortAmount -= 3;
		if (_g_DistortAmount <= 0) {
			global.room1_story_progress += 1
			fx_set_parameter(_distort, "g_DistortAmount", 500);
			layer_set_visible("distort", false);
			
		} else {
			fx_set_parameter(_distort, "g_DistortAmount", _g_DistortAmount);
		}
	}
	
	if (oDialog.visible == false) {
		switch (global.room1_intro_conversation) {
		    case 0: oDialog.draw_my_text("...", true); break;
			case 1: oDialog.draw_my_text("Where am I?", true); break;
			case 2: oDialog.draw_my_text("Who am I?", true); break;
			case 3: oDialog.draw_my_text("Why am I?", true); break;
			case 4: oDialog.draw_my_text("...", true); break;
			case 5: oDialog.draw_my_text("Echoes of my questions vanish into the void", true); break;
		}
	}


	if (place_meeting(x, y, oCoin)) {
		instance_destroy(instance_place(x,y, oCoin));
		coin_fetched();
	}

	if (x > 830 and global.room1_story_progress == 2) {
		oCamera.follow = oCoin;
		oDialog.draw_my_text("Oh gold! Happy feeling", true);
		global.room1_story_progress += 1;
	}

	if (x > 3330 and global.room1_story_progress == 3) {
		oDialog.draw_my_text("Quite the jump. Let's brace ourself! You can do it!!", true);
		global.room1_story_progress += 1;
	}
	

	if (x < 400) {
		layer_set_visible("Instructions", true);
	}

	if (x > 440) {
		layer_set_visible("Instructions", false);
	}

}