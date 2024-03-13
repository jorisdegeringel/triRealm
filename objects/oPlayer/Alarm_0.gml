/// @description game_restart in 2 seconds
if (room == Room1) {
	global.room1_death_count += 1;
	room_goto(Room1);
}
else if (room == Room2) {
	global.room2_death_count += 1;
	room_goto(Room2);
} else if (room == Room3) {
	global.room3_death_count += 1;
	room_goto(Room3);
}


