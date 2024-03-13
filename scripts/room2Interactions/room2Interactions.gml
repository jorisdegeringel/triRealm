// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function room2Interactions(){
	
	if (global.room2_death_count == 0 and global.room2_story_progress == 0) {
		layer_set_visible("banner_level", true);
		global.room2_intro_counter -= 3;
		if (global.room2_intro_counter <= 0) {
			layer_set_visible("banner_level", false);
			global.room2_story_progress += 1;
		}
	}
	
	if (global.room2_death_count % 3 == 0) {
		image_blend = #EE1C24;
	} else if (global.room2_death_count % 3 == 2) {
		image_blend = #291EED;
	} else {
		image_blend = #1FC44E;
	}
	
	if (oDialog.visible == false) {
		switch (global.room2_intro_conversation) {
		    case 0: oDialog.draw_my_text("...", true, #EE1C24); break;
			case 1: oDialog.draw_my_text("I see, so I am?", true, #EE1C24); break;
			case 2: oDialog.draw_my_text("If a tree falls in a forest...", true, #EE1C24); break;
		}
	}
	
	layer_set_visible("background_green", false);
	layer_set_visible("background_blue", false);
	layer_set_visible("background_red", false);
	layer_set_visible("background_yellow", false);
	layer_set_visible("background_purple", false);
	layer_set_visible("background_cyan", false);
	layer_set_visible("background_white", false);
	layer_set_visible("background_black", false);
	oWallLeftGreen.sprite_index = sWallGreen;
	oWallPurple.sprite_index = sWallPurple;
	oWallWhite.sprite_index = sWallWhite;
	
	if (keyboard_check(ord("R")) and keyboard_check(ord("G")) and keyboard_check(ord("B"))) { // white
		image_blend = c_black;
		oWallWhite.sprite_index = sEmpty;
		layer_set_visible("background_white", true);
	} else if (keyboard_check(ord("R")) and keyboard_check(ord("G"))) {
		image_blend = c_white;
		layer_set_visible("background_yellow", true);		
	} else if (keyboard_check(ord("R")) and keyboard_check(ord("B"))) {
		image_blend = c_white;
		layer_set_visible("background_purple", true);
		oWallPurple.sprite_index = sEmpty;

	} else if (keyboard_check(ord("G")) and keyboard_check(ord("B"))) {
		image_blend = c_white;
		layer_set_visible("background_cyan", true);		
	} else if (keyboard_check(ord("R"))) {
		image_blend = c_white;
		layer_set_visible("background_red", true);
	} else if (keyboard_check(ord("G"))) {
		image_blend = c_white;
		oWallLeftGreen.sprite_index = sEmpty;
		layer_set_visible("background_green", true);

	} else if (keyboard_check(ord("B"))) {
		image_blend = c_white;
		layer_set_visible("background_blue", true);
	} else {
		layer_set_visible("background_black", true);
	}

	
	
	if (x < 280) {
		layer_set_visible("Instructions", true);
	}

	if (x > 290) {
		layer_set_visible("Instructions", false);
	}

}