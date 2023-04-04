/// @description Insert description here
// You can write your code in this editor



if (oGame.state == GAME_STATES.PLAY) {
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space) || keyboard_check(ord("W")) || keyboard_check(vk_up);
	attack = mouse_check_button_pressed(mb_left) || keyboard_check(ord("F"));
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
	if (attack && !cooldown) {
		player_attack(class,2);
		cooldown = true;
		alarm[0] = 30;
	}
	if hp <= 0 {
		player_die();
	}
} else {
	image_speed = 0;
}
switch (class) {
	case classes.retiarius:
		sprite_index = sRetiariusWalk;
		break;
	case classes.hoplomachus:
		sprite_index = sHoplomachusWalk;
		break;
	case classes.murmillo:
		sprite_index = sMurmilloWalk;
		break;
	case classes.provocator:
		sprite_index = sProvocatorComplete;
		break;
	case classes.thraex:
		sprite_index = sThraexBody;
		break;
	case classes.dimachaerus:
		sprite_index = sDimachaerusBody;
		break;
	case classes.none:
		sprite_index = sRetiariusWalk;
		break;
	default:
		show_debug_message("how?");
		break;
}