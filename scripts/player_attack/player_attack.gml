// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_attack(class, damage){
	switch (class) {
		case classes.retiarius:
			var atk = instance_create_layer(oPlayer.x,oPlayer.y,"player_1",oPPoke);
			break;
		case classes.hoplomachus:
			var atk = instance_create_layer(oPlayer.x,oPlayer.y,"player_1",oPPoke);
			break;
		case classes.murmillo:
			var atk = instance_create_layer(oPlayer.x,oPlayer.y,"player_1",oPSlash);
			break;
		case classes.provocator:
			var atk = instance_create_layer(oPlayer.x,oPlayer.y,"player_1",oPSlash);
			break;
		case classes.thraex:
			var atk = instance_create_layer(oPlayer.x,oPlayer.y,"player_1",oPSlash);
			break;
		case classes.dimachaerus:
			var atk = instance_create_layer(oPlayer.x,oPlayer.y,"player_1",oPSlash);
			break;
		case classes.none:
			var atk = false;
			break;
		default:
			show_debug_message("how?");
			var atk = false;
			break;
	}
	if (atk) {atk.image_xscale = oPlayer.image_xscale;atk.damage = damage;}
}