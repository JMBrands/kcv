/// @description Insert description here
// You can write your code in this editor

if (oGame.state == GAME_STATES.PLAY) {
	offsetscale=1;
	if (!sign(owner.hsp)==0) offsetscale = sign(owner.hsp);


	x=owner.x+(offset_x*offsetscale);
	y=owner.y+offset_y;

	image_index = owner.image_index;
	image_xscale = owner.image_xscale;
	image_yscale = owner.image_yscale;
} else {
	image_speed = 0;
}

