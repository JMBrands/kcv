/// @description Insert description here
// You can write your code in this editor



if (done ==0) {
	vsp = vsp + grv;

	if !place_free(x+hsp, y) {
	
		while place_free(x + sign(hsp), y) {
			x += sign(hsp);
		}
		hsp = 0;
	}

	x += hsp;

	if !place_free(x, y+vsp) {
		if vsp > 0 {
			done = 1;
			image_index = 1
		}
		while place_free(x, y + sign(vsp)) {
			y += sign(vsp);
		}
		vsp = 0;
	}

	y += vsp;
} 
/*
else {
	time++;
	if (time == decaytime) instance_destroy();
}
*/

