/// @description Insert description here
// You can write your code in this editor

cam = view_camera[0];

follow = oPlayer;

view_w_half = camera_get_view_width(cam)*0.5;
view_h_half = camera_get_view_height(cam)*0.5;

xTo = xstart;
yTo = ystart;

shake_length = 60;
shake_magnitude = 6;
shake_remain = 0;
buff = 4;



bglayer = layer_get_id("Background");


