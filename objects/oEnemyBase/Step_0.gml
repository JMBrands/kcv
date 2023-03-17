/// @description Insert description here
// You can write your code in this editor

var move = sign(oPlayer.x-x);

hsp = clamp(move * walksp,-15, 15);
key_jump = (sign(y-8-oPlayer.y) == 1)&&!place_free(x+hsp, y);

vsp = clamp(vsp + grv,-15,15);
if !place_free(x+hsp, y) {
	
	while (place_free(x + sign(hsp), y)) {
		x += sign(hsp);
	}
	hsp = 0;
}


if !place_free(x, y+vsp) {
	
	while (place_free(x, y + sign(vsp))) {
		y += sign(vsp);
	}
	vsp = 0;
}


if place_free(x,y+1) {
	sprite_index = walksprite;
	image_speed = 0;
	coyoteframes++;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
} else {
	coyoteframes = 0;
	image_speed = 1;
	if (hsp == 0) sprite_index = walksprite;
	else sprite_index = walksprite;
}

if sign(hsp) == 1 || sign(hsp) == -1 {
	image_xscale = sign(hsp);
}
if (!place_free(x, y+1) || coyoteframes < maxcoyoteframes) && key_jump{
	jumping = true;
	vsp -= jumpstr;
	coyoteframes = maxcoyoteframes+1;
}
x += hsp;
y += vsp;
