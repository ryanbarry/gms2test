/// @description controller
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_jump = keyboard_check_pressed(vk_space) || keyboard_check(ord("W"));

var move = key_right - key_left;
hsp = move * walksp;
vsp = vsp + grv;

if (place_meeting(x,y+1,oWall) && key_jump) {
	vsp = -7;
}

if(place_meeting(x+hsp, y, oWall)) {
	while(!place_meeting(x+sign(hsp), y, oWall)) {
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

if(place_meeting(x, y+vsp, oWall)) {
	while(!place_meeting(x, y+sign(vsp), oWall)) {
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

if(!place_meeting(x, y+1, oWall)) {
	sprite_index = sPlayerA;
	image_speed = 0;
	if(sign(vsp) > 0) {
		image_index = 0;
	} else {
		image_index = 1;
	}
} else {
	image_speed = 1;
	if(hsp == 0) {
		sprite_index = sPlayer;
	} else {
		sprite_index = sPlayerR;
	}
}

if(hsp != 0) image_xscale = sign(hsp);
/*
var on_ground = false;
if (place_meeting(x,y+1,oWall)) {
	on_ground = true;
    hsp = move * walksp;
	if(key_jump) {
		vsp = -8;
	}
} else {
	vsp = vsp + grv;
}

// horizontal movement
if (place_meeting(x+hsp,y,oWall)) {
	while(!place_meeting(x+sign(hsp),y,oWall)) {
		x = x + sign(hsp);
	}
} else {
	x = x + hsp;
}

// vertical
if (!on_ground && place_meeting(x,y+vsp,oWall)) {
	while(!place_meeting(x,y+sign(vsp),oWall)) {
		y = y + sign(vsp);
	}
	vsp = 0;
	on_ground = true;
}
y = y + vsp;

// animation
if (on_ground) {
	image_speed = 1;
	if (hsp == 0) {
		sprite_index = sPlayer;
	} else {
		sprite_index = sPlayerR;
	}
} else {
	sprite_index = sPlayerA;
	image_speed = 0;
	if (vsp > 0) {
		image_index = 0;
	} else {
		image_index = 1;
	}
}

if (hsp != 0) {
	image_xscale = sign(hsp);
}
*/
