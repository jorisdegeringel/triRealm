// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function room4Interactions(){
	

	
	if (oDialog.visible == false) {
		switch (global.room4_intro_conversation) {
			case 0: oDialog.draw_my_text("Gratitude overwhelms me...", true); break;
			case 1: oDialog.draw_my_text("We sidestepped the temptation of greed...", true); break;
			case 2: oDialog.draw_my_text("We became the masters of perceptible truth...", true); break;
			case 3: oDialog.draw_my_text("And we embraced the art of letting go...", true); break;
			case 4: oDialog.draw_my_text("You are beyond remarkable", true); break;
			case 5: oDialog.draw_my_text("...", true); break;
			case 6: oDialog.draw_my_text("Farewell, noble ally", true); break;
		}
	}
	
	if (global.room4_intro_conversation == 7) {
		room_goto(Splash);	
	}
	
}