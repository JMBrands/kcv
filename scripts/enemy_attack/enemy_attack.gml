// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_attack(class, enemy, damage){
	switch (class) {
		case classes.retiarius:
			var atk = instance_create_layer(enemy.x,enemy.y,"player_1",oEPoke);
			break;
		case classes.hoplomachus:
			var atk = instance_create_layer(enemy.x,enemy.y,"player_1",oEPoke);
			break;
		case classes.murmillo:
			var atk = instance_create_layer(enemy.x,enemy.y,"player_1",oESlash);
			break;
		case classes.provocator:
			var atk = instance_create_layer(enemy.x,enemy.y,"player_1",oESlash);
			break;
		case classes.thraex:
			var atk = instance_create_layer(enemy.x,enemy.y,"player_1",oESlash);
			break;
		case classes.dimachaerus:
			var atk = instance_create_layer(enemy.x,enemy.y,"player_1",oESlash);
			break;
		case classes.none:
			var atk = false;
			break;
		default:
			show_debug_message("how?");
			var atk = false;
			break;
	}
	if (atk) {atk.image_xscale = enemy.image_xscale; atk.damage = damage;}
}