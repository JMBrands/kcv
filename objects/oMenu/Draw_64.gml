/// @description Insert description here
// You can write your code in this editor

if (oGame.state == GAME_STATES.PAUSE) {
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
	key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
	/*w
	key_left = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
	key_right = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
	key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
	key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
	*/
	draw_set_color(c_gray);
	draw_set_alpha(0.75);
	draw_rectangle(w*0.1,h*0.1,w*0.9,h*0.9,false);
	draw_set_alpha(1);
	draw_set_color(c_blue);
	draw_rectangle(w*0.1*posx,h*0.1*posy,w*0.1*(posx+1),h*0.1*(posy+1),true);
	draw_set_color(c_red);
	draw_line(w*0.1*posx,h*0.1*(posy+0.5),w*0.1*(posx+1),h*0.1*(posy+0.5));
	draw_line(w*0.1*(posx+0.5),h*0.1*posy,w*0.1*(posx+0.5),h*0.1*(posy+1));
	draw_circle(w*0.1*(posx+0.5),h*0.1*(posy+0.5),16,true);
	posx = clamp(posx+(key_right-key_left)/100,1,8);
	posy = clamp(posy+(key_down-key_up)/100*0,1,8);
	
	draw_set_color(c_fuchsia);
	draw_set_alpha(0.5)
	draw_rectangle(w*.15,h*.15,w*.38,h*.475,false);
	draw_rectangle(w*.42,h*.15,w*.62,h*.475,false);
	draw_rectangle(w*.67,h*.15,w*.85,h*.475,false);
	draw_rectangle(w*.15,h*.525,w*.38,h*.85,false);
	draw_rectangle(w*.42,h*.525,w*.62,h*.85,false);
	draw_rectangle(w*.67,h*.525,w*.85,h*.85,false);
}