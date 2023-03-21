/// @description Insert description here
// You can write your code in this editor

game_paused = false
w = display_get_gui_width();
h = display_get_gui_height();
h_half = h * 0.5;

enum GAME_STATES {
	PAUSE,
	PLAY
}
enum TRANS_MODE {
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}
mode = TRANS_MODE.INTRO;
state = GAME_STATES.PAUSE;
percent = 1.5;
target = room;


