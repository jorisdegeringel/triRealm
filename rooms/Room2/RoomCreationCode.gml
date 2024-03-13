global.room_gravity = 4;
global.room_jumpspeed = 50;


init();

iDial = instance_create_layer(oPlayer.x, oPlayer.y, "Player", oDialog);

switch (global.room2_death_count) {
    case 1: iDial.draw_my_text("What the... can not trust my eyes", true, #1FC44E); break;
	case 2: iDial.draw_my_text("My color has changed from red to green", true, #291EED); break;
	case 3: iDial.draw_my_text("Red Green Blue 'r' 'g' 'b'", true, #EE1C24); break;
	case 4: iDial.draw_my_text("'r' 'g' 'b' let's try them als keyboard commands", true, #1FC44E); break;
	case 5: iDial.draw_my_text("'r' 'g' 'b' let's try them als keyboard commands", true, #291EED); break;
	case 6: iDial.draw_my_text("'r' 'g' 'b' let's try them als keyboard commands and combine them", true, #EE1C24); break;
}
