/// @description Insert description here
// You can write your code in this editor

w = display_get_gui_width();
h = display_get_gui_height();
h_half = h * 0.5;
posx = 0;
posy = 0;
key_left = false;
key_right = false;
key_up = false;
key_down = false;
enum classes {
	none,
	retiarius,
	murmillo,
	provocator,
	thraex,
	hoplomachus,
	dimachaerus,
}
assetlayer = layer_get_id("assets");
