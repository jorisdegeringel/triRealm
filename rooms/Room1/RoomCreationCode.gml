global.room_gravity = 4;
global.room_jumpspeed = 50;
global.target_x = 32;
global.target_y = 438;


init();


iDial = instance_create_layer(oPlayer.x, oPlayer.y, "Player", oDialog);


switch (global.room1_death_count) {
    case 1: iDial.draw_my_text("That seemed... impossible", true); break;
	case 2: iDial.draw_my_text("It IS impossible. I need some trick to jump higher...", true); break;
	case 3: iDial.draw_my_text("Too heavy. Maybe there is a lesson here...", true); break;
	case 4: iDial.draw_my_text("The coins are wearing my down. Let's just take what I need.", true); break;
}
