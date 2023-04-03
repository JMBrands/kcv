// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_die(){
	while instance_exists(oPlayerArm) instance_destroy(oPlayerArm);
	while instance_exists(oPlayerHeldBack) instance_destroy(oPlayerHeldBack);
	instance_destroy(oPlayer)
}