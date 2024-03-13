global.room_gravity = 4;
global.room_jumpspeed = 50;
global.target_x = 32;
global.target_y = 438;
var _distort = layer_get_fx("distort");
fx_set_parameter(_distort, "g_DistortAmount", 0);
global.room3_last_moved = current_time;
init();


iDial = instance_create_layer(oPlayer.x, oPlayer.y, "Player", oDialog);


switch (global.room3_death_count) {
    case 1: iDial.draw_my_text("Efforts to control only breed more chaos", true); break;
	case 2: iDial.draw_my_text("I got this, stop controlling me for just a few seconds", true); break;
	case 3: iDial.draw_my_text("Release movement controls (do not move)", true); break;
	case 4: iDial.draw_my_text("Release movement controls but time jumps", true); break;
}
