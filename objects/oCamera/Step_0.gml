if (instance_exists(follow)) {
	xTo = follow.x;
	yTo = follow.y;
}

x += (xTo - x)/ cam_followspeed;
y += (yTo - y)/ cam_followspeed;

// keep camera for leaving the room boundries
x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);

// commit
camera_set_view_pos(cam, x-view_w_half, y - view_h_half);
