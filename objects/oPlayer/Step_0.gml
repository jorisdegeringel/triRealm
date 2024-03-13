
//get horizontal speed (neg hsp means left, positive means right)
var dir = keyboard_check(vk_right) - keyboard_check(vk_left);



if ((place_meeting(x, y, oHazard) and layer_get_visible("Player") == true) or (y > 600 and layer_get_visible("Player") == true)) {
	audio_play_sound(sndDeath, 1, false);
	layer_set_visible("shake_effect", 1);
	layer_set_visible("Player", 0);
	alarm[0] = 1*game_get_speed(gamespeed_fps);
}


hsp += dir*accel;
if (dir == 0) {
	if (hsp < 0) {
		hsp = min(hsp + decel, 0);
	}
	else {
		hsp = max(hsp - decel, 0);
	}
}
hsp = clamp(hsp, -max_hsp, max_hsp);

if (room == Room1) {
	room_goto(Room4)
	room1Interactions();	
} else if (room == Room2) {
	room2Interactions();		
} else if (room == Room3) {
	room3Interactions();		
} else if (room == Room4) {
	room4Interactions();		
}


if (place_meeting(x, y, oDoor)) {
	switch room {
		case Room1: global.room1_finished = true; break;
		case Room2: global.room2_finished = true; break;
		case Room3: global.room3_finished = true; break;
	};
	room_goto_next();
}


if ((keyboard_check(ord("1")) and room != Room1) or (room == Room1 and keyboard_check(ord("Q")))) {
	global.room1_death_count = 0;
	global.room1_story_progress = 0;
	global.room1_intro_conversation = 0;
	global.room1_intro_counter = 600;
	room_goto(Room1); 
}
if ((keyboard_check(ord("2")) and room != Room2) or (room == Room2 and keyboard_check(ord("Q")))) {
	global.room2_story_progress = 0;
	global.room2_death_count = 0;
	global.room2_intro_conversation = 0;
	global.room2_intro_counter = 600;
	room_goto(Room2); 
}
if ((keyboard_check(ord("3")) and room != Room3) or (room == Room2 and keyboard_check(ord("Q")))) {
	global.room3_story_progress = 0;
	global.room3_death_count = 0;
	global.room3_intro_conversation = 0;
	global.room3_intro_counter = 600;
	room_goto(Room3); 
}

if (keyboard_check_pressed(vk_escape)) game_restart(); 




if (place_meeting(x, y+1, oFloor)) { // ONFLOOR
	state_on_floor = true;
	if (!audio_is_playing(sWalk) && hsp != 0 && !blocked) {
		audio_play_sound(sWalk, 1, false);
	}
	jumpbuffer = 10;
} else {
	jumpbuffer -= 1;
	state_on_floor = false;
	vsp += my_gravity;
}


if (jumpbuffer > 0) {
	jumpbuffer--;
	if (keyboard_check_pressed(vk_up)) {
		audio_play_sound(sJump, 1, false);
		jumpbuffer = 0; // cant jump again
		vsp = jumpspeed; 
	}
}


#endregion]

#region collision management

#endregion
// horizontal collision
if (place_meeting(x+hsp,y,oObstacle)) {
	var onepixel = sign(hsp);
	while (!place_meeting(x+onepixel, y, oObstacle)) { // adds one pixel till place_meeting detected 
		x += onepixel;
	}
	hsp = 0;
}

if (!blocked){
	x += hsp; // FINALIZE X
} else{
	hsp = 0;
}

// vertical collision
if (place_meeting(x,y+vsp,oObstacle)) {
	var onepixel = sign(vsp);
	while (!place_meeting(x, y+onepixel, oObstacle)){ // adds one pixel till place_meeting detected 
		y += onepixel;
	}
	vsp = 0;
}

// HACK collision still happening pass trough underneath
if (place_meeting(x,y,oObstacle) and hsp = 0 and vsp == 0) {
	while (place_meeting(x, y+1, oObstacle)){ // adds one pixel till place_meeting detected 
		y += 1;
	}
}

if (!blocked) {
	y += sign(vsp) * min(abs(vsp), max_vsp); // FINALIZE Y
}
else {
	vsp = 0;
}


// ANIMATIONS
if (hsp != 0) image_xscale = sign(hsp);
image_speed = 1; 

if (state_on_floor = false) { // JUMPING ANIMATIONS
	if (vsp < 0) {
		oPlayer.sprite_index = sPlayerJump;
		oPlayer.image_index = 0;
		image_speed = 0;
	} 
	else {
		oPlayer.sprite_index = sPlayerJump;
		oPlayer.image_index = 2;
		image_speed = 0;
	}
} else if (sign(hsp) != 0){  // END JUMPING ANIMATIONS
	oPlayer.sprite_index = sPlayerRunning;
}
else {
	oPlayer.sprite_index = sPlayerIdle;
}
