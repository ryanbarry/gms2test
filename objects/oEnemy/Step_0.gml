/// @description controller
vsp = vsp + grv;

if(place_meeting(x+hsp, y, oWall)) {
	while(!place_meeting(x+sign(hsp), y, oWall)) {
		x = x + sign(hsp);
	}
	hsp = -hsp;
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
	sprite_index = sEnemyA;
	image_speed = 0;
	if(sign(vsp) > 0) {
		image_index = 0;
	} else {
		image_index = 1;
	}
} else {
	image_speed = 1;
	if(hsp == 0) {
		sprite_index = sEnemy;
	} else {
		sprite_index = sEnemyR;
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
		sprite_index = sEnemy;
	} else {
		sprite_index = sEnemyR;
	}
} else {
	sprite_index = sEnemyA;
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
