/// @description Insert description here
// You can write your code in this editor



if (oGame.state == GAME_STATES.PLAY) {
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space) || keyboard_check(ord("W")) || keyboard_check(vk_up);

	var move = key_right - key_left;

	hsp = clamp(move * walksp,-15, 15);

	vsp = clamp(vsp + grv,-15,15);
	if place_meeting(x,y,oRetiariusNet) {
		hsp /=8;
		vsp /=4;
	}

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
		sprite_index = spritewalk;
		image_index = 3;
		image_speed = 0;
		coyoteframes++;
		if (sign(vsp) > 0) image_index = 2; else image_index = 2;
	} else {
		coyoteframes = 0;
		image_speed = 1;
		if (hsp == 0){
			sprite_index = spritewalk; 
			image_index = 0; 
			image_speed = 0;
		}
		else {
			sprite_index = spritewalk; 
			image_speed = 1;
		}
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
} 
if !(oGame.state == GAME_STATES.PLAY){
	image_speed = 0;
}


/*if (oGame.state == GAME_STATES.PLAY) {
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space) || keyboard_check(ord("W")) || keyboard_check(vk_up);

	var move = key_right - key_left;

	hsp = clamp(move * walksp,-15, 15);

	vsp = clamp(vsp + grv,-15,15);
	if place_meeting(x,y,oRetiariusNet) {
		hsp /=8;
		vsp /=4;
	}

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
		sprite_index = sPlayer;
		image_speed = 0;
		coyoteframes++;
		if (sign(vsp) > 0) image_index = 1; else image_index = 0;
	} else {
		coyoteframes = 0;
		image_speed = 1;
		if (hsp == 0) sprite_index = sPlayer;
		else sprite_index = sPlayer;
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
} else {
	image_speed = 0;
}